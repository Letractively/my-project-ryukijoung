using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

namespace MAQNA.Data
{
    public class DataManager : DataBase
    {
        #region DataSet

        /// <summary>
        /// SP명을 받아서 DataSet을 리턴한다.
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <returns>결과 데이터</returns>
        public static DataSet ClExecuteDataSet(string storedProcedureName)
        {
            DbCommand dbCommand = MyDatabase.GetStoredProcCommand(storedProcedureName);

            DataSet dsBase = MyDatabase.ExecuteDataSet(dbCommand);

            return dsBase;
        }

        /// <summary>
        /// SP명과 파라메터를 입력받아 DataSet를 리턴한다.
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <param name="sqlParameters">Parameter Array</param>
        /// <returns>결과 데이터</returns>
        public static DataSet ClExecuteDataSet(string storedProcedureName, SqlParameter[] sqlParameters)
        {
            DbCommand dbCommand = MyDatabase.GetStoredProcCommand(storedProcedureName);

            if (sqlParameters != null)
            {
                foreach (SqlParameter param in sqlParameters)
                {
                    dbCommand.Parameters.Add(param);
                }
            }

            DataSet dsBase = MyDatabase.ExecuteDataSet(dbCommand);

            return dsBase;
        }

        /// <summary>
        /// SP명과 파라메터를 입력받아 DataSet를 리턴한다.
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <param name="sqlParameters">Parameter Array</param>
        /// <returns>결과 데이터</returns>
        public static DataSet ClExecuteDataSet(string storedProcedureName, List<SqlParameter> sqlParameters)
        {
            DbCommand dbCommand = MyDatabase.GetStoredProcCommand(storedProcedureName);

            if (sqlParameters != null)
            {
                foreach (SqlParameter param in sqlParameters)
                {
                    dbCommand.Parameters.Add(param);
                }
            }

            DataSet dsBase = MyDatabase.ExecuteDataSet(dbCommand);

            return dsBase;
        }

        #endregion

        #region DataReader

        /// <summary>
        /// SP명을 입력받아서 DataReader를 리턴한다.
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <returns>결과 데이터</returns>
        public static IDataReader ClExecuteDataReader(string storedProcedureName)
        {
            IDataReader oRrBase = null;

            oRrBase = MyDatabase.ExecuteReader(CommandType.StoredProcedure, storedProcedureName);

            return oRrBase;
        }

        /// <summary>
        /// SP명과 파라메터를 입력받아서 DataReader를 리턴한다.
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <param name="sqlParameters">Parameter Array</param>
        /// <returns>결과 데이터</returns>
        public static IDataReader ClExecuteDataReader(string storedProcedureName, SqlParameter[] sqlParameters)
        {
            IDataReader oRrBase = null;

            DbCommand dbCommand = MyDatabase.GetStoredProcCommand(storedProcedureName);

            if (sqlParameters != null)
            {
                foreach (SqlParameter param in sqlParameters)
                {
                    dbCommand.Parameters.Add(param);
                }
            }

            oRrBase = MyDatabase.ExecuteReader(dbCommand);

            return oRrBase;
        }

        #endregion

        #region ExecuteNonQuery

        /// <summary>
        /// SP명을 입력받아 ExecuteNonQuery를 수행하고 처리결과 Row 수를 리턴한다.
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <returns></returns>
        public static int ClExecuteNonQuery(string storedProcedureName)
        {
            int result = MyDatabase.ExecuteNonQuery(CommandType.StoredProcedure, storedProcedureName);

            return result;
        }

        /// <summary>
        /// SP명과 파라메터를 입력받아 ExecuteNonQuery를 수행하고 처리결과 Row 수를 리턴한다.
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <param name="sqlParameters">Parameter Array</param>
        /// <returns></returns>
        public static int ClExecuteNonQuery(string storedProcedureName, SqlParameter[] sqlParameters)
        {
            DbCommand dbCommand = MyDatabase.GetStoredProcCommand(storedProcedureName);

            if (sqlParameters != null)
            {
                foreach (SqlParameter param in sqlParameters)
                {
                    dbCommand.Parameters.Add(param);
                }
            }

            int result = MyDatabase.ExecuteNonQuery(dbCommand);

            return result;
        }

        #endregion

        #region ExecuteScalar

        /// <summary>
        /// SP명을 입력받아 ExecuteScalar를 실행하고 결과값 리턴
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <returns>결과 데이터</returns>
        public static object ClExecuteScalar(string storedProcedureName)
        {
            object result = MyDatabase.ExecuteScalar(CommandType.StoredProcedure, storedProcedureName);

            return result;
        }

        /// <summary>
        /// SP명과 파라메터를 입력받아 ExecuteScalar를 실행하고 결과값 리턴
        /// </summary>
        /// <param name="storedProcedureName">SP명</param>
        /// <param name="sqlParameters">Parameter Array</param>
        /// <returns></returns>
        public static object ClExecuteScalar(string storedProcedureName, SqlParameter[] sqlParameters)
        {
            DbCommand dbCommand = MyDatabase.GetStoredProcCommand(storedProcedureName);

            if (sqlParameters != null)
            {
                foreach (SqlParameter param in sqlParameters)
                {
                    dbCommand.Parameters.Add(param);
                }
            }

            object result = MyDatabase.ExecuteScalar(dbCommand);

            return result;
        }

        #endregion

        #region SetParameter

        /// <summary>
        /// 파라메터 배열을 구성한다.
        /// 문자타입의 경우 (숫자타입도 사이즈를 지정하면 이 메소드를 탄다)
        /// </summary>
        /// <param name="parameterName">파라미터명</param>
        /// <param name="parameterValue">파리미터 값</param>
        /// <param name="parameterDirection">인/아웃풋</param>
        /// <param name="sqlDbType">데이터 타입</param>
        /// <param name="size">사이즈</param>
        /// <returns></returns>
        public static SqlParameter SetSqlParameter(string parameterName, object parameterValue, ParameterDirection parameterDirection, SqlDbType sqlDbType, int size)
        {
            SqlParameter spParam = null;

            spParam = new SqlParameter(parameterName, sqlDbType, size);
            spParam.Direction = parameterDirection;
            spParam.Value = parameterValue;
            return spParam;
        }

        /// <summary>
        /// 파라메터 배열을 구성한다.
        /// 숫자타입의 경우
        /// </summary>
        /// <param name="parameterName">파라미터명</param>
        /// <param name="parameterValue">파리미터 값</param>
        /// <param name="parameterDirection">인/아웃풋</param>
        /// <param name="sqlDbType">데이터 타입</param>
        /// <returns></returns>
        public static SqlParameter SetSqlParameter(string parameterName, object parameterValue, ParameterDirection parameterDirection, SqlDbType sqlDbType)
        {
            SqlParameter spParam = null;

            spParam = new SqlParameter(parameterName, sqlDbType);
            spParam.Direction = parameterDirection;
            spParam.Value = parameterValue;
            return spParam;
        }

        #endregion
    }
}
