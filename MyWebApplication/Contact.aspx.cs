using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApplication
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //divMessage.Visible = false;
            //divMessage.Attributes.Add("style", "color:blue");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var message = string.Format($"You said your name is {txtName.Text} and your age is {txtAge.Text} " +
                $"and your email address is {txtEmail.Text}. Your favorite color is {ddlColor.SelectedValue}");

            ltMessage.Text = message;
        }
    }
}