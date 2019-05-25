using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;


namespace TP_WEB_LESCANO_CASSANO
{
	public partial class Formulario : System.Web.UI.Page
	{
		protected void altaVoucherCliente(Cliente cli, Voucher vou)
		{
			ClienteNegocio negocio = new ClienteNegocio();
			cli.Apellido = txtApellido.Text;
			cli.Ciudad = txtCiudad.Text;
			cli.CodigoPostal = txtCP.Text;
			cli.Direccion = txtDireccion.Text;
			cli.DNI = Convert.ToInt32(txtDNI.Text);
			cli.Email = txtEmail.Text;
			cli.FechaRegistro = System.DateTime.Now;
			vou.Cliente.ID = negocio.agregarCliente(cli);
			vou.Producto.ID = Convert.ToInt32(Session["Producto"].ToString());
			vou.FechaRegistro = System.DateTime.Now;
		}

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnParticipar_Click(object sender, EventArgs e)
		{
			ClienteNegocio negocio = new ClienteNegocio();
			VoucherNegocio negocioV = new VoucherNegocio();
			Voucher voucher = new Voucher();
			Cliente cliente = new Cliente();
			if (!negocio.comprobarDNI(Convert.ToInt32((txtDNI.Text))))
				{
				altaVoucherCliente(cliente, voucher);
				negocioV.agregarVoucher(voucher);
				Response.Redirect("~/Felicitaciones.aspx");
			}
			else
			{

			}
		}
	}
}