using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace ComPages.Models
{
    public class PaisListMapper
    {

        private static ListItem mapUno(Pais p)
        {
            return new ListItem { Value = p.Id.ToString(), Text = p.Nombre };

        }

        public static List<ListItem> MapearLista(List<Pais> paises)
        {
            List<ListItem> items = new List<ListItem>();

            paises.ForEach(p => items.Add(mapUno(p)));
            return items;
        }
    }
}