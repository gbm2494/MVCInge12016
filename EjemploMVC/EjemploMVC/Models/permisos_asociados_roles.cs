//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EjemploMVC.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class permisos_asociados_roles
    {
        public int id_permiso { get; set; }
        public string id_rol { get; set; }
    
        public virtual permisos permisos { get; set; }
    }
}
