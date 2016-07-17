using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EjemploMVC.Models;

namespace EjemploMVC.Controllers
{
    public class RHVersion2Controller : Controller
    {
        Entities baseDatos = new Entities();

        // GET: RHVersion2
        public ActionResult Index()
        {
            ModeloIntermedio modelo = new ModeloIntermedio();
            modelo.listaPersonas = baseDatos.persona.ToList();
            modelo.listaNumeros = baseDatos.telefono.ToList();
            return View(modelo);
        }
    }
}