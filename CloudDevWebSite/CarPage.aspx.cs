using CloudDevWebSite.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudDevWebSite
{
    public partial class CarPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            DPHelper helper = new DPHelper();
            string carNo = carNoTxt.Text;
            if (carNo.Equals(""))
            {
                errorDelete.Text = "Please enter the car number first before pressing the button";
            }
            else
            {
                errorDelete.Text = "";
                helper.AlterCarDetailsNOCHECK();
                helper.carDelete(carNo);
                helper.AlterCarDetailsCHECK();
            }
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}