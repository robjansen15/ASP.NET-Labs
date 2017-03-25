using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            var firstname = this.fname.Value;
            var lastname = this.lname.Value;
            var email = this.email.Value;
            var pass = this.password.Value;

            string generated = new DatabaseConnection().CreateUser(firstname, lastname, email, pass);

        }
    }
}