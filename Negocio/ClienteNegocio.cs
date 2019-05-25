using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using Dominio;

namespace Negocio
{
    public class ClienteNegocio
    {
        public int agregarCliente(Cliente nuevo)
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            try
            {
                accesoDatos.setearSP("agregarCliente");
                accesoDatos.Comando.Parameters.Clear();
                accesoDatos.Comando.Parameters.AddWithValue("@DNI", nuevo.DNI);
                accesoDatos.Comando.Parameters.AddWithValue("@Nombre", nuevo.Nombre);
                accesoDatos.Comando.Parameters.AddWithValue("@Apellido", nuevo.Apellido);
                accesoDatos.Comando.Parameters.AddWithValue("@Email", nuevo.Email);
                accesoDatos.Comando.Parameters.AddWithValue("@Direccion", nuevo.Direccion);
                accesoDatos.Comando.Parameters.AddWithValue("@Ciudad", nuevo.Ciudad);
                accesoDatos.Comando.Parameters.AddWithValue("@CodigoPostal", nuevo.CodigoPostal);
                accesoDatos.Comando.Parameters.AddWithValue("@Fecha", nuevo.FechaRegistro);
                accesoDatos.abrirConexion();
                return accesoDatos.ejecutarAccionReturn();
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
