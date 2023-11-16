using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;

namespace UsuarioFormulario
{
    public class classArchivo
    {
        public string Name { get; set; }
        public string Carpeta { get; set; }

        public classArchivo(string name, string carpeta) {
            Name = name;
            Carpeta = carpeta;
        }
    }
}