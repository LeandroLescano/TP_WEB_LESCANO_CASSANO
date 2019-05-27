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

        public bool comprobarDNI(int DNI, Cliente cliente)
		{
			AccesoDatosManager accesoDatos = new AccesoDatosManager();
			try
			{
				accesoDatos.setearConsulta("SELECT * FROM CLIENTES WHERE DNI = " + DNI);
				accesoDatos.abrirConexion();
				accesoDatos.ejecutarConsulta();
				while (accesoDatos.Lector.Read())
				{
                    cliente.ID = Convert.ToInt32(accesoDatos.Lector.GetInt64(0));
                    cliente.DNI = accesoDatos.Lector.GetInt32(1);
                    cliente.Nombre = accesoDatos.Lector.GetString(2);
                    cliente.Apellido = accesoDatos.Lector.GetString(3);
                    cliente.Email = accesoDatos.Lector.GetString(4);
                    cliente.Direccion = accesoDatos.Lector.GetString(5);
                    cliente.Ciudad = accesoDatos.Lector.GetString(6);
                    cliente.CodigoPostal = accesoDatos.Lector.GetString(7);
                    cliente.FechaRegistro = accesoDatos.Lector.GetDateTime(8);
                    return true;
				}
				return false;
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
