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
			//if (comprobarVoucher(txtCodigo.Text))
			//{ 
			Session.Add("CodigoVoucher", txtCodigo.Text);
			string CodigoVoucher = Session["CodigoVoucher"].ToString();
			Response.Redirect("~/Formulario.aspx");
			//}

		}
	}
}