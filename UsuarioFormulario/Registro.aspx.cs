using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsuarioFormulario
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["contraseña"];
            Label1.Text = cookie  != null ? cookie.Value: "No se creo la cookie de contraseña   ";

            if (this.Session["Username"] != null)
            {
                Label2.Text = "Sesion : " + Session["Username"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         
            HttpCookie cookie = new HttpCookie("contraseña","password");
            cookie.Expires = DateTime.Now.AddSeconds(10);
            Response.Cookies.Add(cookie);

            this.Session["Username"] = TextBox1.Text;

            Response.Redirect(Request.RawUrl);
        }
    }
}