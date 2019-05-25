using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using AccesoDatos;

namespace Negocio
{
    public class VoucherNegocio
    {
        public void agregarVoucher(Voucher nuevo)
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            try
            {
                accesoDatos.setearSP("agregarVoucher");
                accesoDatos.Comando.Parameters.Clear();
                accesoDatos.Comando.Parameters.AddWithValue("@Codigo", nuevo.CodigoVoucher);
                accesoDatos.Comando.Parameters.AddWithValue("@Cliente",nuevo.Cliente.ID);
                accesoDatos.Comando.Parameters.AddWithValue("@Producto", nuevo.Producto.ID);
                accesoDatos.Comando.Parameters.AddWithValue("@Fecha", nuevo.FechaRegistro);
                accesoDatos.abrirConexion();
                accesoDatos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }
        }
    }
}
