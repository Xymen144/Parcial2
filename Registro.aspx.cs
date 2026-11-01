using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            HttpCookie cookieContraseña = new HttpCookie("Contraseña", this.TextBox5.Text);
            cookieContraseña.Expires = DateTime.Now.AddDays(1); 
            this.Response.Cookies.Add(cookieContraseña);

            
            this.Session["UsuarioLogueado"] = this.TextBox3.Text;
            this.Session.Timeout = 1;
            Response.Redirect("Documentos.aspx");

            this.Label1.Text = "Registro exitoso! Contraseña guardada en Cookie y Usuario guardado en Sesión";

        }
    }
}