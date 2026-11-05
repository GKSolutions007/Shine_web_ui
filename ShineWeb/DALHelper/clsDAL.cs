using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ShineWeb.DALHelper
{
    // One instance per request (holds per-instance connection/transaction fields; not thread-safe).
    public class clsDAL
    {
        SqlConnection aSqlconnection = new SqlConnection();
        SqlTransaction aSqlTransaction;

        // SQL command timeout in seconds, from appSettings["QueryTimeoutSeconds"] (0 = no limit).
        // Default 300: the UI runs imports and print jobs that can take longer than API calls.
        private static readonly int _queryTimeoutSeconds = GetConfiguredTimeout();
        private static int GetConfiguredTimeout()
        {
            int val;
            string cfg = ConfigurationManager.AppSettings["QueryTimeoutSeconds"];
            return int.TryParse(cfg, out val) && val >= 0 ? val : 300;
        }

        // ===== Stored-procedure parameter metadata cache (same design as the API's clsDAL) =====
        // SqlCommandBuilder.DeriveParameters costs an extra round-trip to SQL Server on every call.
        // Parameters are derived once per database + procedure and cloned for each call.
        // appSettings["CacheSpParameters"] = "false" turns the cache off.
        private static readonly ConcurrentDictionary<string, SqlParameter[]> _spParamCache
            = new ConcurrentDictionary<string, SqlParameter[]>(StringComparer.OrdinalIgnoreCase);
        private static readonly bool _cacheSpParams = !"false".Equals(
            ConfigurationManager.AppSettings["CacheSpParameters"], StringComparison.OrdinalIgnoreCase);

        private static string SpCacheKey(SqlCommand cmd)
        {
            return (cmd.Connection != null ? cmd.Connection.Database : "") + "::" + cmd.CommandText;
        }

        // 201 missing parameter, 206 type clash, 8144 too many arguments, 8145 unknown parameter:
        // the procedure's signature changed, so drop the cached copy (the next call re-derives it).
        private static bool IsSpSignatureMismatch(SqlException ex)
        {
            return ex.Number == 201 || ex.Number == 206 || ex.Number == 8144 || ex.Number == 8145;
        }

        private static void InvalidateSpParameters(SqlCommand cmd)
        {
            SqlParameter[] removed;
            _spParamCache.TryRemove(SpCacheKey(cmd), out removed);
        }

        // cmd.Connection must be open.
        private static void PrepareSpParameters(SqlCommand cmd)
        {
            if (!_cacheSpParams)
            {
                SqlCommandBuilder.DeriveParameters(cmd);
                return;
            }
            string key = SpCacheKey(cmd);
            SqlParameter[] cached;
            if (!_spParamCache.TryGetValue(key, out cached))
            {
                SqlCommandBuilder.DeriveParameters(cmd);
                cached = new SqlParameter[cmd.Parameters.Count];
                for (int i = 0; i < cmd.Parameters.Count; i++)
                    cached[i] = (SqlParameter)((ICloneable)cmd.Parameters[i]).Clone();
                _spParamCache[key] = cached;
                return;
            }
            cmd.Parameters.Clear();
            foreach (var p in cached)
                cmd.Parameters.Add((SqlParameter)((ICloneable)p).Clone());
        }

        private static void FillWithCache(SqlCommand cmd, DataTable target)
        {
            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                try { da.Fill(target); }
                catch (SqlException ex) when (IsSpSignatureMismatch(ex)) { InvalidateSpParameters(cmd); throw; }
            }
        }

        public string Connectionstr()
        {
            return ShineWeb.Helpers.SecretConfig.ConnectionString("Connections");
        }
        public DataTable dl_ExecuteSqlQuery(string strquery)
        {
            DataTable dt_SqlQuery = new DataTable();
            try
            {
                using (aSqlconnection = new SqlConnection(Connectionstr()))
                using (SqlCommand cmd = new SqlCommand(strquery, aSqlconnection))
                using (SqlDataAdapter dacmd = new SqlDataAdapter(cmd))
                {
                    cmd.CommandTimeout = _queryTimeoutSeconds;
                    aSqlconnection.Open();
                    dacmd.Fill(dt_SqlQuery);
                }
            }
            catch (Exception)
            {
                throw; // preserve original stack trace
            }
            return dt_SqlQuery;
        }
        /// <summary>
        /// Parameterised ad-hoc query: values are referenced as @p0, @p1, ... in the query text.
        /// Use this instead of concatenating values into dl_ExecuteSqlQuery.
        /// </summary>
        public DataTable dl_ExecuteParamQuery(string strquery, params object[] parameters)
        {
            DataTable dt = new DataTable();
            using (aSqlconnection = new SqlConnection(Connectionstr()))
            using (SqlCommand cmd = new SqlCommand(strquery, aSqlconnection))
            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                cmd.CommandTimeout = _queryTimeoutSeconds;
                for (int i = 0; i < parameters.Length; i++)
                    cmd.Parameters.AddWithValue("@p" + i, parameters[i] ?? DBNull.Value);
                aSqlconnection.Open();
                da.Fill(dt);
            }
            return dt;
        }
        public DataTable dl_ExecuteParamSP(string strSPName, params object[] parameters)
        {
            DataTable dt_returnvalue = new DataTable();
            try
            {
                using (aSqlconnection = new SqlConnection(Connectionstr()))
                {
                    aSqlconnection.Open();
                    using (SqlCommand cmd = new SqlCommand(strSPName, aSqlconnection))
                    {
                        cmd.CommandTimeout = _queryTimeoutSeconds;
                        cmd.CommandType = CommandType.StoredProcedure;
                        PrepareSpParameters(cmd);
                        for (int i = 0; i < parameters.Length; i++)
                        {
                            cmd.Parameters[i + 1].Value = parameters[i];
                        }
                        FillWithCache(cmd, dt_returnvalue);
                    }
                }
            }
            catch (Exception)
            {
                throw; // preserve original stack trace
            }
            return dt_returnvalue;
        }
        public void dl_Transaction(int Action)
        {
            if (Action == 1)
            {
                aSqlconnection = new SqlConnection(Connectionstr());
                aSqlconnection.Open();
                aSqlTransaction = aSqlconnection.BeginTransaction();
            }
            else if (Action == 2)
            {
                aSqlTransaction.Commit();
                aSqlconnection.Close();
            }
            else if (Action == 3)
            {
                SafeRollback(aSqlTransaction);
                aSqlconnection.Close();
            }
        }
        // Rolls back only if the transaction is still alive. When a procedure runs with
        // SET XACT_ABORT ON, SQL Server rolls the transaction back itself on error; the
        // SqlTransaction is then "zombied" (Connection == null) and Rollback() would throw
        // InvalidOperationException, hiding the real SqlException from the caller/log.
        private static void SafeRollback(SqlTransaction tx)
        {
            if (tx == null || tx.Connection == null) return;
            try { tx.Rollback(); }
            catch (InvalidOperationException) { /* already completed on the server */ }
        }
        public DataTable dl_ManageTrans(string strStoredProc, params object[] obj)
        {
            try
            {
                DataTable dt_returnvalue = new DataTable();

                SqlCommand cmd = new SqlCommand(strStoredProc, aSqlconnection, aSqlTransaction);
                cmd.CommandTimeout = _queryTimeoutSeconds;
                cmd.CommandType = CommandType.StoredProcedure;
                PrepareSpParameters(cmd);
                for (int i = 0; i < obj.Length; i++)
                {
                    if (cmd.Parameters[i + 1].SqlDbType != SqlDbType.Structured)
                    {
                        cmd.Parameters[i + 1].Value = obj[i];
                    }
                    else
                    {
                        string strTypeName = cmd.Parameters[i + 1].TypeName;
                        int nIndex = strTypeName.IndexOf(".");
                        cmd.Parameters[i + 1].TypeName = strTypeName.Substring(nIndex + 1);
                        cmd.Parameters[i + 1].Value = obj[i];
                    }
                }
                FillWithCache(cmd, dt_returnvalue);
                return dt_returnvalue;
            }
            catch (Exception)
            {
                SafeRollback(aSqlTransaction);
                throw; // preserve original stack trace
            }
        }
    }
}
