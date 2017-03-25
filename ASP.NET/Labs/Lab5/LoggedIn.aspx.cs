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
                this.myPanel.Visible = false;

                string JQueryVer = "1.7.1";
                ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
                {
                    Path = "~/Scripts/jquery-" + JQueryVer + ".min.js",
                    DebugPath = "~/Scripts/jquery-" + JQueryVer + ".js",
                    CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".min.js",
                    CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".js",
                    CdnSupportsSecureConnection = true,
                    LoadSuccessExpression = "window.jQuery"
                });
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


        protected void visiblePanel_Click(object sender, EventArgs e)
        {
            if (this.myPanel.Visible)
            {
                this.myPanel.Visible = false;
            }
            else
            {
                this.myPanel.Visible = true;
            }
                
        }
    }
}