using MAQNA.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAQNA.DAL
{
    public class Sample : IDisposable
    {
        DataSet dsReturn = null;

        public void Dispose()
        {
            dsReturn = null;
        }

        public DataSet GetSampleDBData()
        {
            SqlParameter[] paramArray = new SqlParameter[] 
            {               
            };

            dsReturn = DataManager.ClExecuteDataSet("TestSelect", paramArray);

            return dsReturn;
        }
    }
}
