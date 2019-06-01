using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;
using System.Text;

namespace TP_WEB_LESCANO_CASSANO
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Producto> listado;
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            listado = negocio.listarProductos();
        }

        protected void seleccionarProd(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int IDProducto = Convert.ToInt32(btn.ID.Substring(3, 1));
            Session.Add("Producto", IDProducto);
            Response.Redirect("~/Formulario.aspx");
        }
    }
}