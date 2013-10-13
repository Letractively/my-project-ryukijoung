using MAQNA.DAL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SampleCode_ReturnJSON : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = null;

        using (Sample sample = new Sample())
        {
            List<SqlParameter> paramList = new List<SqlParameter>();

            string s = Request.Params["param1"];
            s += "," + Request.Params["param2"];
            s += "," + Request.Params["param3"];

            paramList.Add(new SqlParameter("@col1", s));

            ds = sample.GetSampleDBData("TestSelect2", paramList);

            lblJSON.Text = JsonConvert.SerializeObject(ds);
        }
    }
}