using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Voucher
    {
        public int ID { get; set; }
        public string CodigoVoucher { get; set; }
        public bool Estado { get; set; }
        public Cliente Cliente { get; set; }
        public Producto Producto { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
