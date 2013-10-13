using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAQNA.DAL;
using System.Data;
using Newtonsoft.Json;
using System.Web.Services;
using System.Web.Script.Serialization;

public partial class SampleCode_jsonTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet dataSet = null;
        using (Sample sample = new Sample())
        {
            //데이터 가져오기
            dataSet = sample.GetSampleDBData();
          
            //데이터 셋 제이슨으로 변경하기
            string resultJSON = String.Empty;
            resultJSON = JsonConvert.SerializeObject(dataSet, Formatting.Indented);

            //화면에 밀어 넣기 샘플
            System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "JCall11", resultJSON.ToString(), false);

            //스크립트 생성하기 샘플
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language=""'javascript'"">");
            sb.Append(@"example();");
            sb.Append(@"</script>");
            System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "JCall1", sb.ToString(), false);

           JavaScriptSerializer serializer = new JavaScriptSerializer();
           serializer.Serialize(resultJSON);

        }
    }
}