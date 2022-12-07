using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie pippo = Request.Cookies["LOGIN_EPICODE"];

            if (pippo != null)
            {
                string nome = pippo.Values["username"];
                BenvenutoLabel.Text="Benvenuto "+ nome;
            }
            else
            {
                Response.Write("Nessun username loggato");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie pippo = Request.Cookies["LOGIN_EPICODE"];
            pippo.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(pippo);
            Response.Redirect("WebForm1.aspx");
        }
    }
}