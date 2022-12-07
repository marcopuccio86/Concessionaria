using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("LOGIN_EPICODE");
            c.Values["username"] = TextBoxUsername.Text;
            c.Values["password"] = TextBoxPassword.Text;
            c.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(c);
            Response.Redirect("WebForm2.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}