using System;
using System.Configuration;
using ShineWeb.DALHelper;

namespace ShineWeb.Helpers
{
    /// <summary>
    /// Single place that reads secrets (connection strings) from Web.config.
    /// Same contract as the API's SampWebApi.Utility.SecretConfig:
    ///  - appSettings["SecretsArePlainText"] = "true": values are plain text inside sections that are
    ///    encrypted on disk by ASP.NET protected configuration (Deploy\Protect-WebConfig.ps1).
    ///  - otherwise: legacy clsEncryptDecrypt ciphertext (hard-coded key; kept for compatibility).
    /// </summary>
    public static class SecretConfig
    {
        private static readonly bool _plainText = string.Equals(
            ConfigurationManager.AppSettings["SecretsArePlainText"], "true", StringComparison.OrdinalIgnoreCase);

        public static string ConnectionString(string name)
        {
            ConnectionStringSettings cs = ConfigurationManager.ConnectionStrings[name];
            if (cs == null || string.IsNullOrEmpty(cs.ConnectionString))
                throw new ConfigurationErrorsException("connectionStrings[\"" + name + "\"] is missing.");
            return _plainText ? cs.ConnectionString : clsEncryptDecrypt.Decrypt(cs.ConnectionString);
        }

        public static string AppSecret(string key)
        {
            string value = ConfigurationManager.AppSettings[key];
            if (string.IsNullOrEmpty(value)) return value;
            return _plainText ? value : clsEncryptDecrypt.Decrypt(value);
        }
    }
}
