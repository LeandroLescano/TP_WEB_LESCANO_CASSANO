using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TP_WEB_LESCANO_CASSANO
{
	public partial class Index : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
		{

		}

        [System.Web.Services.WebMethod]
        private static string comprobar(string Codigo)
        {
            VoucherNegocio negocio = new VoucherNegocio();
            if (negocio.comprobarVoucher(Codigo))
            {
                return "Tu voucher es legal";
            }
            else
            {
                return "Tu voucher es trucho";
            }
        }


        protected void btnSiguiente_Click(object sender, EventArgs e)
		{
            VoucherNegocio negocio = new VoucherNegocio();
            if (negocio.comprobarVoucher(txtCodigo.Text))
            {
                Session.Add("CodigoVoucher", txtCodigo.Text);
                string CodigoVoucher = Session["CodigoVoucher"].ToString();
                Response.Redirect("~/Formulario.aspx");
            }
            else
            {
                
            }
		}
	}
}