using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EjemploMVC.Models;

namespace EjemploMVC.Models
{
    public class ModeloIntermedio
    {
        public persona modeloPersona { get; set; }
        public telefono modeloTelefono1 { get; set; }
        public telefono modeloTelefono2 { get; set; }
        public List<persona> listaPersonas = new List<persona>();
        public List<telefono> listaNumeros = new List<telefono>();

    }
}