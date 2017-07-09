using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ComPages.Models;
namespace ComPages.Programa
{
    public partial class ModalConvenio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarComboPais();
            }
            else
            {
                //guardo en session el convenio seleccionado

            }
        }
        public void CargarComboPais()
        {

            //obtener lista de base;
            List<Pais> paises = new List<Pais> { new Pais { Id = 1, Nombre = "Argentina" }, new Pais { Id = 2, Nombre = "Brasil" }, new Pais { Id = 3, Nombre = "Japon" } };
            ddlPais.Items.AddRange(PaisListMapper.MapearLista(paises).ToArray());
            ddlPais.Items.Insert(0, new ListItem { Value="0",Text="Seleccione.."});
        }
    }
}