using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using AccesoDatos;

namespace Negocio
{
    public class ProductoNegocio
    {
        public List<Producto> listarProductos()
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            List<Producto> listado = new List<Producto>();
            Producto nuevo;
            try
            {
                accesoDatos.setearConsulta("SELECT * FROM PRODUCTOS");
                accesoDatos.abrirConexion();
                accesoDatos.ejecutarConsulta();
                while (accesoDatos.Lector.Read())
                {
                    nuevo = new Producto();
                    nuevo.Titulo = accesoDatos.Lector.GetString(1);
                    nuevo.Descripcion = accesoDatos.Lector.GetString(2);
                    nuevo.URLImagen = accesoDatos.Lector.GetString(3);
                    listado.Add(nuevo);
                }
                return listado;
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
