using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //scrape all data
            var firstName = this.firstName.Text;
            var lastName = this.lastName.Text;
            var email = this.email.Text;
            var emailCheck = this.emailConfirm.Text;
            var password = this.passwordInput.Text;
            var passwordCheck = this.passwordInputCheck.Text;
            var gender = this.personGender.SelectedValue;
            var department = this.department.SelectedValue;
            var status = this.personStatus.SelectedValue;      
            var agreementIsChecked = this.agreeToTerms.Checked;

        
            //output data
            Response.Write("<script>alert('"+ "Your information has been submitted: " + 
                firstName + "  " +
                lastName + "  " +
                email + "  " +
                emailCheck + "  " +
                password + "  " +
                passwordCheck + "  " +
                gender + "  " +
                department + "  " +
                status + "  " +
                agreementIsChecked + "  " +
                "');</script>");
        }
    }
}