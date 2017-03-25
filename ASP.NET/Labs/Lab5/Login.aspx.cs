using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }


        protected void BtnClick_SignUp(object sender, EventArgs e)
        {
            Response.Redirect("/Registration.aspx");
        }


        protected void BtnClick_Login(object sender, EventArgs e)
        {
            LoginObj login = new LoginObj(this.username.Value, this.password.Value);

            if(login._Username != null && login._Password != null)
            {
                login = new DatabaseConnection().ValidateLogin(login);

                //LOL @ storing the user's password in the session
                //This should be replaced with a token... but no time for this school project
                Session.Add("login", login);
            }


            if (login._Authenticated)
            {
                //randomly generated activation code 
                new DatabaseConnection().UpdateCode(login._Username);

                //redirect to the protected page     
                Response.Redirect("/LoggedIn.aspx");
            }
            else
            {
                //propt user credentials are bad
                Response.Write("<script>alert('" + "Login failed, potentially bad credentials." + "')</script>");
            }
        }


        protected void forgot_Click(object sender, EventArgs e)
        {

        }
    }
}