using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Parcial2
{
    public partial class Documentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UsuarioLogueado"] != null)
            {
                this.Label1.Text = "Bienvenido al área de gestión, " + Session["UsuarioLogueado"].ToString() + "!";
            }
            else
            {
                Response.Redirect("Registro.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (File.Exists(Server.MapPath(".") + "/Adjuntos/" + FileUpload1.FileName))
            {
                Label1.Text = "Ya existe un archivo con ese nombre.";

                // 1. Obtenemos el nombre sin la extensión (ej: "asesoria")
                string nombreSinExt = Path.GetFileNameWithoutExtension(FileUpload1.FileName);

                // 2. Obtenemos la extensión del archivo (ej: ".txt")
                string extension = Path.GetExtension(FileUpload1.FileName);

                // 3. Armamos el nuevo nombre concatenando el sufijo antes de la extensión
                string nombreConCopia = nombreSinExt + "-Copia" + extension;

                // 4. Guardamos el archivo con el nuevo nombre
                FileUpload1.SaveAs(Server.MapPath(".") + "/Adjuntos/" + nombreConCopia);

                Label1.Text = "Archivo subido exitosamente (se guardó como copia: " + nombreConCopia + ")";
                Label2.Text = "Tamaño en bytes: " + FileUpload1.PostedFile.ContentLength.ToString() +
                              "<br>Nombre del archivo: " + nombreConCopia +
                              "<br>Tipo de archivo: " + FileUpload1.PostedFile.ContentType;
            }
            else
            {

                this.FileUpload1.SaveAs(Server.MapPath(".") + "/Adjuntos/" + this.FileUpload1.FileName);

                this.Label1.Text = "Archivo subido con éxito.";
                this.Label2.Text = "Tamaño en bytes: " + this.FileUpload1.PostedFile.ContentLength.ToString() +
                              "<br>Nombre del archivo: " + this.FileUpload1.FileName +
                              "<br>Tipo de archivo: " + this.FileUpload1.PostedFile.ContentType;
            }
        }
    }
}
    
