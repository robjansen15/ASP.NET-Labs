using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace Lab3
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
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

        protected void Submit_Button(object sender, EventArgs e)
        {
            if(Page.IsValid != true)
            {
                return;
            }

            var firstName = this.firstName.Text;
            var lastName = this.lastName.Text;
            var email = this.email.Text;
            var emailCheck = this.emailConfirm.Text;
            var password = this.passwordInput.Text;
            var passwordCheck = this.passwordInputConfirm.Text;
            var gender = this.personGender.SelectedValue;
            var department = this.department.SelectedValue;
            var status = this.personStatus.SelectedValue;
            var agreementIsChecked = this.agreeToTerms.Checked;


            if (firstName.Length > 0 && lastName.Length > 0)
            {
                //output data
                this.webOutput.Text = "";
                this.webOutput.Text += ("Please look at the information you submitted and check if this is correct: " +
                    firstName + "  " +
                    lastName + "  " +
                    email + "  " +
                    emailCheck + "  " +
                    password + "  " +
                    passwordCheck + "  " +
                    gender + "  " +
                    department + "  " +
                    status + "  " +
                    agreementIsChecked + "  ");

                this.submitBtn.Visible = false;
                this.verifyButton.Visible = true;
                this.cancelBtn.Visible = true;
                this.webOutput.Visible = true;
            }
            else
            {
                string output = "Please enter your ";

                if (firstName.Length < 1)
                {
                    this.firstName.BackColor = System.Drawing.Color.Yellow;
                    output += "first name";
                }

                if (lastName.Length < 1)
                {
                    this.lastName.BackColor = System.Drawing.Color.Yellow;
                    output += ", last name";
                }


                Response.Write("<script>alert('" + output +
                   "');</script>");
            }
        }


        protected void Verify_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('" + "Thank You for submitting the form!" +
                   "');</script>");

        }


        protected void Cancel_Click(object sender, EventArgs e)
        {
            this.submitBtn.Visible = true;
            this.verifyButton.Visible = false;
            this.cancelBtn.Visible = false;
            this.webOutput.Visible = false;
        }
    }    
}