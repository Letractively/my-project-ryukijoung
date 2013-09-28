using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAQNA.DAL;
using System.Data;
using Newtonsoft.Json;

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
                string enteredId = Console.ReadLine();

                resultJSON = JsonConvert.SerializeObject(dataSet, Formatting.Indented);
                Literal1.Text = resultJSON;

                //THE BELOW CODE WOULD NOT AND WILL NOT WORK !!!
                //StringWriter sw = new StringWriter();

                //JsonWriter jsw = new JsonTextWriter(sw);

                //DataTableConverter dtc = new DataTableConverter();

                //JsonSerializer js = new JsonSerializer();

                //dtc.WriteJson(jsw, datatableResultSet, js);
            }

        }
        catch (Exception)
        {
            throw;
        }
    }
}