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

        protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void altaCliente(Cliente cli)
		{
			ClienteNegocio negocio = new ClienteNegocio();
            cli.Nombre = txtNombre.Text;
			cli.Apellido = txtApellido.Text;
			cli.Ciudad = txtCiudad.Text;
			cli.CodigoPostal = txtCP.Text;
			cli.Direccion = txtDireccion.Text;
			cli.DNI = Convert.ToInt32(txtDNI.Text);
			cli.Email = txtEmail.Text;
			cli.FechaRegistro = System.DateTime.Now;

		}

        protected void altaVoucher(Voucher vou, int IDCliente)
        {
            vou.CodigoVoucher = Session["CodigoVoucher"].ToString();
            vou.Cliente = new Cliente();
            vou.Cliente.ID = IDCliente;
            vou.Producto = new Producto();
            vou.Producto.ID = Convert.ToInt32(Session["Producto"].ToString());
            vou.FechaRegistro = System.DateTime.Now;
        }

		protected void btnParticipar_Click(object sender, EventArgs e)
		{
			ClienteNegocio negocio = new ClienteNegocio();
			VoucherNegocio negocioV = new VoucherNegocio();
			Voucher voucher = new Voucher();
			Cliente cliente = new Cliente();
			if (!negocio.comprobarDNI(Convert.ToInt32((txtDNI.Text)), cliente))
			{
				altaCliente(cliente);
                altaVoucher(voucher, cliente.ID);
				negocioV.agregarVoucher(voucher);
				Response.Redirect("~/Felicitaciones.aspx");
			}
			else
			{
                altaVoucher(voucher, cliente.ID);
                negocioV.agregarVoucher(voucher);
                Response.Redirect("~/Felicitaciones.aspx");
            }
		}

        protected bool comprobarDNI()
        {
            ClienteNegocio negocio = new ClienteNegocio();
            Cliente cliente = new Cliente();
            if (negocio.comprobarDNI(Convert.ToInt32(txtDNI.Text), cliente))
            {
                cargarFormulario(cliente);
                return true;
            }
            else
            {
                return false;
            }
        }

        private void cargarFormulario(Cliente cliente)
        {
            txtNombre.Text = cliente.Nombre;
            txtApellido.Text = cliente.Apellido;
            txtEmail.Text = cliente.Email;
            txtDireccion.Text = cliente.Direccion;
            txtCiudad.Text = cliente.Ciudad;
            txtCP.Text = cliente.CodigoPostal;
        }

        protected void btnHide_Click(object sender, EventArgs e)
        {
            comprobarDNI();
        }
    }
}