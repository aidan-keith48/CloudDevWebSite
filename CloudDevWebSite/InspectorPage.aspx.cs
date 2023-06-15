using CloudDevWebSite.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudDevWebSite
{
    public partial class InspectorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            DPHelper helper = new DPHelper();
            string inspectorNum = deleteTxt.Text;
            if (inspectorNum.Equals(""))
            {
                errorDelete.Text = "Please enter the inspector number first before pressing the button";
            }
            else
            {
                errorDelete.Text = "";
                helper.AlterInspectorDetailsNOCHECK();
                helper.inspectorDelete(inspectorNum);
                helper.AlterInspectorDetailsCHECK();
            }
        }
    }
}