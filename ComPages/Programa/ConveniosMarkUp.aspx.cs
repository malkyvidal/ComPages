using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ComPages.Models;
namespace ComPages.Programa
{
    public partial class ConveniosMarkUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
            }
        }

        public List<Convenio> GetConvenios(int idPais)
        {
            List<Convenio> convenios = new List<Convenio>() { new Convenio { IdConvenio = 1, IdPais = 1, Expediente = "Exp-34", Institucion = "Origa" }, 
                new Convenio{IdPais=1,IdConvenio=2,Expediente="Exp-23",Institucion="Pav"},
                new Convenio{IdPais=2,IdConvenio=3,Expediente="Exp-53",Institucion="Cam"},
                new Convenio{IdPais=3,IdConvenio=4,Expediente="Exp-28",Institucion="Tab"},
            };
            return convenios.Where(d => d.IdPais == idPais).ToList();
        }
        
    }
}