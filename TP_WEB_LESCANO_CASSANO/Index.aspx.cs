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

<<<<<<< HEAD
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
=======
		protected void btnSiguiente_Click(object sender, EventArgs e)
		{
			//if (comprobarVoucher(txtCodigo.Text))
			//{ 
			Session.Add("CodigoVoucher", txtCodigo.Text);
			string CodigoVoucher = Session["CodigoVoucher"].ToString();
			Response.Redirect("~/Formulario.aspx");


			//}
>>>>>>> 1c91059b26b60da3137db48c95463b3439849897


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