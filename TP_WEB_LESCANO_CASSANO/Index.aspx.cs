using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data.SqlClient;

namespace TP_WEB_LESCANO_CASSANO
{
	public partial class Index : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
		{

        }

        [System.Web.Services.WebMethod]
        public static string verVoucher(string Codigo)
        {
            VoucherNegocio negocio = new VoucherNegocio();
            if (negocio.comprobarVoucher(Codigo))
            {
                HttpContext.Current.Session.Add("CodigoVoucher", Codigo);
                return "Existe";
            }
            else
            {
                return "No existe";
            }

        }
    }
}