using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace domain
{
    public class Cart
    {
        public Product Product { get; set; }
        public int Quantity { get; set; }

        public Cart(Product product, int quantity)
        {
            this.Product = product;
            this.Quantity = quantity;
        }

        public decimal getAcumulateAmount()
        {
            return Product.Precio * Quantity;
        }
    }
}
