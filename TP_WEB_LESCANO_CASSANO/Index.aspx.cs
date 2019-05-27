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

        protected void btnSiguiente_Click(object sender, EventArgs e)
		{
            VoucherNegocio negocio = new VoucherNegocio();
            if (negocio.comprobarVoucher(txtCodigo.Text))
            {
                Session.Add("CodigoVoucher", txtCodigo.Text);
                Response.Redirect("~/Premios.aspx");
            }
            else
            {
//hacer otra pagina que diga que el codigo es incorrecto o ya fue utilizado (ya modifiqué el ComprobarVoucher para que si el estado es 1, retorne false)
                lblError.Text = "Parece que tu código es incorrecto. Vuelve a intentarlo!";
            }
		}
	}
}