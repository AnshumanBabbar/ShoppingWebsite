using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjShoppingArena
{
    public partial class ContactUs2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                btnLogout.Visible = true;
                btnLogin.Visible = false;
               // lblSuccess.Text = "Login Success, Welcome " + Session["Username"].ToString();

            }

            else
            {
                btnLogout.Visible = false;
                btnLogin.Visible = true;
                //  Response.Redirect("SignIn.aspx");
            }
        }
    }
}