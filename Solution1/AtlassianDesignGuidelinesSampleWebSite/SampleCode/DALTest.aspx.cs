using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAQNA.DAL;
using System.Data;

public partial class DALTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = null;
        using (Sample sample = new Sample())
        {
            ds = sample.GetSampleDBData();

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}