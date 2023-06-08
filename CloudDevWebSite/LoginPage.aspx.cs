using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudDevWebSite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text;
            string password = passwordTextBox.Text;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                errorUser.Text = "Please enter a username";
                errorPass.Text = "Please enter a password";
            }
            else
            {
                errorUser.Text = "";
                errorPass.Text = "";
                usernameTextBox.Text = "";
                passwordTextBox.Text = string.Empty;
                ClientScript.RegisterStartupScript(this.GetType(), "showMessage", "showMessage();", true);
                Response.Redirect("HomePage.aspx");
            }
        }
    }
}