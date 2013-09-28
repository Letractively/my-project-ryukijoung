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

public partial class DALTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            DataSet dataSet = null;
            using (Sample sample = new Sample())
            {
                dataSet = sample.GetSampleDBData();

                GridView1.DataSource = dataSet.Tables[0];
                GridView1.DataBind();


                string resultJSON = String.Empty;
                resultJSON = JsonConvert.SerializeObject(dataSet, Formatting.Indented);
                Literal1.Text = resultJSON;
            }
        }
        catch (Exception)
        {
            throw;
        }
    }

    [WebMethod]
    public static string GetMessage()
    {
        try
        {
            DataSet dataSet = null;
            using (Sample sample = new Sample())
            {
                dataSet = sample.GetSampleDBData();
                return JsonConvert.SerializeObject(dataSet, Formatting.Indented);
            }

        }
        catch (Exception)
        {
            throw;
        }
    }
}