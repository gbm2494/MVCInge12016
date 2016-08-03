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

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ModeloIntermedio modelo)
        {
            if (ModelState.IsValid)
            {
                baseDatos.persona.Add(modelo.modeloPersona);
                baseDatos.SaveChanges();
                if (modelo.modeloTelefono1.telefono1 != null)
                {
                    modelo.modeloTelefono1.cedula = modelo.modeloPersona.cedula;
                    baseDatos.telefono.Add(modelo.modeloTelefono1);
                }

                if (modelo.modeloTelefono2.telefono1 != null)
                {
                    modelo.modeloTelefono2.cedula = modelo.modeloPersona.cedula;
                    baseDatos.telefono.Add(modelo.modeloTelefono2);
                }
                
                baseDatos.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                ModelState.AddModelError("", "Debe completar toda la información necesaria.");
                return View(modelo);
            }
        }
    }
}