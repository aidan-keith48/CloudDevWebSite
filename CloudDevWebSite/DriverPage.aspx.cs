using CloudDevWebSite.Controller;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudDevWebSite
{
    public partial class DriverPage : System.Web.UI.Page
    {
        string connectionString = "Data Source=AIDANKIETHPC\\MSSQLSERVER01;Initial Catalog=TheRentYouRide;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            DPHelper helper = new DPHelper();
            string driverID = deleteTxt.Text;
            if(driverID.Equals(""))
            {
                errorDelete.Text = "Please enter the driverID first before pressing the button";
            }
            else
            {
                errorDelete.Text = "";
                helper.AlterDriverTableNOCHECK();
                helper.driverDelete(driverID);
                helper.AterDriverTableCHECK();
            }
        }
    }
}