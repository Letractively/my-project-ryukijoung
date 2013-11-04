<%@ WebHandler Language="C#" Class="GenericHandler" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using System.Data;
using MAQNA.DAL;

/// <summary>
/// JSON 형식을 리턴하기위한 제네릭 핸들러 입니다.
/// IHttpHandler를 상속받습니다.
/// </summary>
public class GenericHandler : IHttpHandler
{
    DBAccess dbAccess = new DBAccess(); //DB에 엑세스 하기위한 클래스 입니다.
    string methodName = string.Empty;
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
            methodName = context.Request.Params["name"].ToString();

            switch (methodName)
            {
                case "GetDBDataSet":
                    context.Response.Write(GetDBDataSet());
                    break;
                case "SetDBUpdate":
                    context.Response.Write(SetDBUpdate(context));
                    break;
                case "SelectIdDup":
                    context.Response.Write(SelectIdDup(methodName));
                    break;
            }
        }
    }

    private string SelectIdDup(string spName)
    {
        JsonResponse response = new JsonResponse();
        JavaScriptSerializer jSerializer = new JavaScriptSerializer();
        string jsonData = string.Empty;

        try
        {
            response.IsSucess = true;
            response.Message = "";
            response.ResponseData = dbAccess.SpDBAccess(spName);
        }
        catch (Exception ex)
        {
            response.Message = ex.Message;
            response.IsSucess = false;
        }

        return jSerializer.Serialize(response);
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