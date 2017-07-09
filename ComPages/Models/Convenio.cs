using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComPages.Models
{
    public class Convenio
    {
        public int IdConvenio { get; set; }
        public string Expediente { get; set; }

        public int IdPais { get; set; }

        public string Institucion { get; set; }
    }
}