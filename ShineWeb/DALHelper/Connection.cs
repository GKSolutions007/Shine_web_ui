using System.Configuration;

namespace ShineWeb.DALHelper
{
    public class Connection
    {
        public static string GetConnectionString()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Connections"].ConnectionString;
            return connectionString;
        }
    }
}