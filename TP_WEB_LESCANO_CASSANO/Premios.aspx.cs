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

        protected void seleccionarProd(int ID)
        {
            Session.Add("Producto", ID);
            Response.Redirect("~/Formulario.aspx");
        }

        protected void btnTV_Click(object sender, EventArgs e)
        {
            seleccionarProd(1);
        }

        protected void btnAire_Click(object sender, EventArgs e)
        {
            seleccionarProd(2);
        }

        protected void btnCel_Click(object sender, EventArgs e)
        {
            seleccionarProd(3);
        }
    }
}