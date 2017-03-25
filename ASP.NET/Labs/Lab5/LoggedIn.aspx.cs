using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class LoggedIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool redirect = true;

            var login = ((LoginObj)Session["login"]);

            if (login != null)
            {
                if (login._Authenticated == true)
                {
                    redirect = false;
                    this.message.InnerText = "Welcome " + login._Name + "!";
                }              
            }


            if (redirect)
            {
                Response.Redirect("/Login.aspx");
            }
           

            if (!IsPostBack)
            {
                
            }
        }


        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            ((LoginObj)Session["login"])._Authenticated = false;

            Response.Redirect("/Login.aspx");
        }


        protected void changePassword_Click(object sender, EventArgs e)
        {

        }
    }
}