using Microsoft.Practices.EnterpriseLibrary.Data;

namespace MAQNA.Data
{
    public class DataBase
    {
        protected static Database MyDatabase = DatabaseFactory.CreateDatabase("SqlConnectionString");

        public DataBase() { }

        public static string GetConnectionString()
        {
            return MyDatabase.ConnectionString;
        }
    }
}
