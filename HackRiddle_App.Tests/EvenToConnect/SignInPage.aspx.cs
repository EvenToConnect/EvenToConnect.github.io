using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvenToConnect
{
    public partial class SignInPage : System.Web.UI.Page
    {
        public static Objects.UserCollection allUsers;
        protected void Page_Load(object sender, EventArgs e)
        {

             allUsers = (Objects.UserCollection)HttpRuntime.Cache["allUsers"];

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignInPage.aspx");
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtusername.Value;
            string password = txtpassword.Value;

            if (allUsers.checkLogin(username, password))
            {
                Session["username"] = username;
                Response.Redirect("AccountPage.aspx");
                

            }
            else
                lblLogInError.Visible = true;


        }
    }
}