﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// DB에  Access하여 데이터를 읽어오는 클래스 입니다.
/// </summary>
public class DBAccess
{
    public List<DBAccessList> TestDBAccess()
	{
        string connectionString = @"Data Source=maqna.cafe24.com; Initial Catalog=maqna;Persist Security Info=True;User ID=maqna;Password=Imsqna1!";
        DataSet ds = new DataSet(); //반환받을 데이터 셋 입니다.
        //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MAQNAConnection"].ConnectionString))
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            try
            {
                List<DBAccessList> dbAccess = new List<DBAccessList>();
                DBAccessList list = null;

                if (conn.State != ConnectionState.Open)
                    conn.Open();

                SqlCommand command = new SqlCommand("maqna.TestSelect", conn);
                // 파라미터 추가 예시 입니다.
                //command.Parameters.Add(new SqlParameter("@Param1", "Value");
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    list = new DBAccessList();
                    list.Test1 = reader["Test1"].ToString();
                    list.Test2 = reader["Test2"].ToString();
                    list.Test3 = reader["Test3"].ToString();
                    list.Test4 = reader["Test4"].ToString();
                    list.Test5 = reader["Test5"].ToString();
                    dbAccess.Add(list);
                }

                return dbAccess;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                if (conn.State != ConnectionState.Closed)
                    conn.Close();
            }
       }
	}
}

/// <summary>
/// DBAccesss 데이터를 저장하는 리스트 입니다.
/// </summary>
public class DBAccessList
{
    private string _Test1 = string.Empty;
    private string _Test2 = string.Empty;
    private string _Text3 = string.Empty;
    private string _Text4 = string.Empty;
    private string _Text5 = string.Empty;
    public string Test1 { get; set; }
    public string Test2 { get; set; }
    public string Test3 { get; set; }
    public string Test4 { get; set; }
    public string Test5 { get; set; }
}