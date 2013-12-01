﻿<%@ WebHandler Language="C#" Class="GenericHandler" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using System.Data;
using MAQNA.DAL;
using MAQNA.DAL.ViewClass;
using Newtonsoft.Json;
using System.Collections.Specialized;

/// <summary>
/// JSON 형식을 리턴하기위한 제네릭 핸들러 입니다.
/// IHttpHandler를 상속받습니다.
/// </summary>
public class GenericHandler : IHttpHandler
{
    DBAccess dbAccess = new DBAccess(); //DB에 엑세스 하기위한 클래스 입니다.

    /// <summary>
    /// Common에서 요청된 HttpContext내용을 처리 합니다.
    /// </summary>
    /// <param name="context"></param>
    public void ProcessRequest(HttpContext context)
    {
        //JSON Content 유형 및 인코딩 설정
        context.Response.ContentType = "application/json";
        //전달받은 메서드 이름에따라 분기
        if (context.Request.Params["name"] != null)
        {
            string spName = string.Empty;
            spName = context.Request.Params["name"].ToString();
			Dictionary<string, string> parameter = null;
				
            switch (spName)
            {
                case "GetDBDataSet":
                    context.Response.Write(GetDBDataSet());
                    break;
                case "SetDBUpdate":
                    context.Response.Write(SetDBUpdate(context));
                    break;
                case "IdDup":
                    if (context.Request.Params["UserId"] != null)
                    {
                        context.Response.Write(SelectIdDup("IdDup_Select", context.Request.Params["UserId"].ToString()));
                    }
                    break;
                case "SetDBDataSet":
                    context.Response.Write(SetDBDataSet(context.Request.Form));
                    break;
                case "Ask_List_Select":
                    context.Response.Write(AskListSelect(context.Request.Form));
                    break;
                case "Ask_Insert":
                    context.Response.Write(AskInsert(context.Request.Form));
                    break;
                case "UserReg":
                    parameter = new Dictionary<string, string>();
                    if (context.Request.Params["UserId"] != null && context.Request.Params["NickName"] != null && context.Request.Params["PassWd"] != null)
                    {
                        parameter.Add("UserId", context.Request.Params["UserId"].ToString());
                        parameter.Add("NickName", context.Request.Params["NickName"].ToString());
                        parameter.Add("PassWd", context.Request.Params["PassWd"].ToString());
                        context.Response.Write(InsertUser("User_Insert", parameter));
                    }
                    break;
				case "Login" :
                    parameter = new Dictionary<string, string>();
                    if (context.Request.Params["UserId"] != null && context.Request.Params["PassWd"] != null)
                    {
                        parameter.Add("UserId", context.Request.Params["UserId"].ToString());
                        parameter.Add("PassWd", context.Request.Params["PassWd"].ToString());
                        context.Response.Write(Login("Login_Select", parameter));
                    }
                    break;
            }
        }
    }

	private string Login(string spname, Dictionary<string, string> parameter)
    {
        JsonResponse response = new JsonResponse();
        JavaScriptSerializer jSerializer = new JavaScriptSerializer();
        string jsonData = string.Empty;

        try
        {
            UserInfo user = new UserInfo();
            DataSet ds = null;
            List<System.Data.SqlClient.SqlParameter> param = new List<System.Data.SqlClient.SqlParameter>();
            param.Add(new System.Data.SqlClient.SqlParameter("@UserId", parameter["UserId"]));
            param.Add(new System.Data.SqlClient.SqlParameter("@UserPW", parameter["PassWd"]));

            response.IsSucess = true;
            response.Message = "";
            ds = dbAccess.SpDBAccess(spname, param);
            if (ds.Tables[0].Rows.Count > 0)
            {
                user.Seq = ds.Tables[0].Rows[0]["UsersSeq"].ToString();
                user.UserId = ds.Tables[0].Rows[0]["UserId"].ToString();
                user.UserNick = ds.Tables[0].Rows[0]["UserNickName"].ToString();
            }
            response.ResponseData = user;

            return jSerializer.Serialize(response);
        }
        catch (Exception ex)
        {
            response.Message = ex.Message;
            response.IsSucess = false;
            return jSerializer.Serialize(response);
        }
    }

    private class UserInfo
    {
        public string Seq { get; set; }
        public string UserId { get; set; }
        public string UserNick { get; set; }
    }

    private class UserInsert
    {
        public int Sucess { get; set; }
    }

    private string InsertUser(string spname, Dictionary<string, string> parameter)
    {
        JsonResponse response = new JsonResponse();
        JavaScriptSerializer jSerializer = new JavaScriptSerializer();
        string jsonData = string.Empty;

        try
        {
            UserInsert user = new UserInsert();
            List<System.Data.SqlClient.SqlParameter> param = new List<System.Data.SqlClient.SqlParameter>();
            param.Add(new System.Data.SqlClient.SqlParameter("@UserId", parameter["UserId"]));
            param.Add(new System.Data.SqlClient.SqlParameter("@NickName", parameter["NickName"]));
            param.Add(new System.Data.SqlClient.SqlParameter("@UserPW", parameter["PassWd"]));

            response.IsSucess = true;
            response.Message = "";
            user.Sucess = dbAccess.NonQueryDBAccess(spname, param);
            response.ResponseData = user;

            return jSerializer.Serialize(response);
        }
        catch (Exception ex)
        {
            response.Message = ex.Message;
            response.IsSucess = false;
            return jSerializer.Serialize(response);
        }
    }

    private string SelectIdDup(string spname, string userid)
    {
        JsonResponse response = new JsonResponse();
        JavaScriptSerializer jSerializer = new JavaScriptSerializer();
        string jsonData = string.Empty;

        try
        {
            List<System.Data.SqlClient.SqlParameter> param = new List<System.Data.SqlClient.SqlParameter>();
            param.Add(new System.Data.SqlClient.SqlParameter("@UserId", userid));

            response.IsSucess = true;
            response.Message = "";
            DataSet ds = dbAccess.SpDBAccess(spname, param);
            Dictionary<string, string> dicResult = new Dictionary<string, string>();

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                {
                    dicResult.Add(ds.Tables[0].Columns[j].ColumnName.ToString()
                        , ds.Tables[0].Rows[i][j].ToString());
                }
            }
            response.ResponseData = dicResult;

            return jSerializer.Serialize(response);
        }
        catch (Exception ex)
        {
            response.Message = ex.Message;
            response.IsSucess = false;
            return jSerializer.Serialize(response);
        }
    }

    /// <summary>
    /// DB 엑세스 테스트 메서드
    /// </summary>
    /// <returns></returns>
    private string GetDBDataSet()
    {
        JsonResponse response = new JsonResponse();
        JavaScriptSerializer jSerializer = new JavaScriptSerializer();
        string jsonData = string.Empty;
        try
        {
            List<DBAccessList> list = dbAccess.TestDBAccess();
            response.IsSucess = true;
            response.Message = "";
            response.ResponseData = list;
        }
        catch (Exception ex)
        {
            response.Message = ex.Message;
            response.IsSucess = false;

        }
        return jSerializer.Serialize(response);
    }

    private string SetDBDataSet(NameValueCollection formData)
    {
        JsonResponse response = new JsonResponse();
        JavaScriptSerializer jSerializer = new JavaScriptSerializer();
        string jsonData = string.Empty;
        try
        {
            string spName = formData[0];
            int userId = 1;  // 세션에서 읽어와야함
            string title = formData[1];
            string ask = formData[2];

            List<System.Data.SqlClient.SqlParameter> param = new List<System.Data.SqlClient.SqlParameter>();
            param.Add(new System.Data.SqlClient.SqlParameter("@UsersSeq", userId));
            param.Add(new System.Data.SqlClient.SqlParameter("@AskTitle", title));
            param.Add(new System.Data.SqlClient.SqlParameter("@AskDoc", ask));

            response.IsSucess = true;
            response.Message = "";
            DataSet ds = dbAccess.SpDBAccess(spName, param);
            response.ResponseData = true;
        }
        catch (Exception ex)
        {
            response.Message = ex.Message;
            response.IsSucess = false;
            response.ResponseData = false;

        }
        return jSerializer.Serialize(response);
    }

    private string AskListSelect(NameValueCollection formData)
    {
        JsonResponse response = new JsonResponse();
        JavaScriptSerializer jSerializer = new JavaScriptSerializer();
        string jsonData = string.Empty;
        try
        {
            Dictionary<string, string> dicResult = new Dictionary<string, string>();
            string searchType = formData[0];
            string searchText = formData[1];

            List<System.Data.SqlClient.SqlParameter> param = new List<System.Data.SqlClient.SqlParameter>();
            param.Add(new System.Data.SqlClient.SqlParameter("@SearchText", searchText));
            param.Add(new System.Data.SqlClient.SqlParameter("@SearchType", searchType));

            response.IsSucess = true;
            response.Message = "";
            DataSet ds = dbAccess.SpDBAccess("maqna.Ask_List_Select", param);
            response.ResponseData = AskList.ConvertList(ds);
        }
        catch (Exception ex)
        {
            response.Message = ex.Message;
            response.IsSucess = false;
            response.ResponseData = false;
        }
        return jSerializer.Serialize(response);
    }

    private string AskInsert(NameValueCollection formData)
    {
        JsonResponse response = new JsonResponse();
        JavaScriptSerializer jSerializer = new JavaScriptSerializer();
        string jsonData = string.Empty;
        try
        {
            string userSeq = formData[0];
            string title = formData[1];
            string ask = formData[2];

            List<System.Data.SqlClient.SqlParameter> param = new List<System.Data.SqlClient.SqlParameter>();
            param.Add(new System.Data.SqlClient.SqlParameter("@UsersSeq", userSeq));
            param.Add(new System.Data.SqlClient.SqlParameter("@AskTitle", title));
            param.Add(new System.Data.SqlClient.SqlParameter("@AskDoc", ask));

            response.IsSucess = true;
            response.Message = "";
            dbAccess.NonQueryDBAccess("maqna.Ask_Insert", param);
            response.ResponseData = true;
        }
        catch (Exception ex)
        {
            response.Message = ex.Message;
            response.IsSucess = false;
            response.ResponseData = false;
        }
        return jSerializer.Serialize(response);
    }

    private string SetDBUpdate(HttpContext context)
    {
        return "AA";
    }

    /// <summary>
    /// 데이터 테이블을 인자값으로 받아 Json 문자열로 반환하는 메서드 입니다.
    /// </summary>
    /// <param name="dataTable"></param>
    /// <returns></returns>
    public String ConvertDataTableTojSonString(DataTable dataTable)
    {
        JavaScriptSerializer serializer = new JavaScriptSerializer();

        List<Dictionary<String, Object>> tableRows = new List<Dictionary<String, Object>>();

        Dictionary<String, Object> row;

        foreach (DataRow dr in dataTable.Rows)
        {
            row = new Dictionary<String, Object>();
            foreach (DataColumn col in dataTable.Columns)
            {
                row.Add(col.ColumnName, dr[col]);
            }
            tableRows.Add(row);
        }
        return serializer.Serialize(tableRows);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }



}