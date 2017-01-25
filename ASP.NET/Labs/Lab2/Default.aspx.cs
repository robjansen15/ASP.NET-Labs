using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //textBox.Style["font-size"] = "200px";
                //textBox.BackColor = Color.Red;

                for (int i = 0; i < 3; i++)
                {
                    ListItem li = new ListItem("abc", "abc");
                    myList.Items.Add((li));
                }
            }
        }


        protected void myList_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('" + "Your information has been submitted: " +
            // myList.SelectedValue +
            // "');</script>");

            var x = 10;
        }
    }

}