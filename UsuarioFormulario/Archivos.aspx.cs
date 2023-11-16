using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsuarioFormulario
{
    public partial class Archivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mostrarArchivos();
        }

        public void mostrarArchivos()
        {
            string nombreUsuario = Session["Username"].ToString();
            string carpeta = Server.MapPath($"./{nombreUsuario}");

            if (Directory.Exists(carpeta))
            {
                string[] files = Directory.GetFiles(carpeta);

               List<classArchivo> fileList = new List<classArchivo>();
                foreach (string file in files)
                { 
                    var fileNew = new classArchivo(Path.GetFileName(file),file);
                    fileList.Add(fileNew);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (this.Session["Username"] != null)
            {
                string nombreUsuario = Session["Username"].ToString();
                string carpeta = Server.MapPath($"./{nombreUsuario}");

                //string usuario = $"{Server.MapPath(".")}/'{Session["Username"].ToString()}'";
                if (!Directory.Exists(carpeta))
                {
                    Directory.CreateDirectory(carpeta);
                }

                if (FileUpload1.HasFile)
                {
                   
                    foreach (HttpPostedFile archivo  in FileUpload1.PostedFiles)
                    {
                        FileUpload1.SaveAs($"{carpeta}/{archivo.FileName}");
                    }
                   
                    Label1.Text = "Se agrego el archivo correctamente";
                    mostrarArchivos();
                }

            }
            else {
                Label1.Text = "No hay una sesion para cargar archivos";
                mostrarArchivos();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Descargar")
            {
                GridViewRow registro = GridView1.Rows[(Convert.ToInt32(e.CommandArgument))];
                string filePath = registro.Cells[1].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }
    }
}