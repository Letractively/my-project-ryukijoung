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

public partial class SampleCode_jsonTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet dataSet = null;
        using (Sample sample = new Sample())
        {
            dataSet = sample.GetSampleDBData();
          
            string resultJSON = String.Empty;
            resultJSON = JsonConvert.SerializeObject(dataSet, Formatting.Indented);

            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            //sb.Append(@"<script language="'javascript'">");
            //sb.Append(@"example();");
            //sb.Append(@"</script>");
            System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "JCall1", resultJSON.ToString(), false);

        }
    }
}