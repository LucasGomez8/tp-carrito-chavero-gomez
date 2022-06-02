using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using domain;
using services;

namespace carrito
{
    public partial class Producto : Page
    {

        public List<Product> productList { get; set; }
        public List<Cart> enCarrito;
        protected void Page_Load(object sender, EventArgs e)
        {
            CommerceConnecction cc = new CommerceConnecction();
            productList = cc.listarProducto();

            if (Request.Form["__EVENTTARGET"] == "OnClickAddProduct")
            {
                string id = Request.Form["__EVENTARGUMENT"];
                AgregarCarrito(id);
            }
        }

        protected void AgregarCarrito(string id)
        {
            enCarrito = Session["enCarrito"] != null 
                ? (List<Cart>)Session["enCarrito"] 
                : new List<Cart>();

            Product product = findProductById(Int32.Parse(id));
            if (product == null) return;

            Cart cart = checkProductOnCart(product);
            enCarrito.Remove(cart);
            cart.Quantity++;

            enCarrito.Add(cart);
            Session.Add("enCarrito", enCarrito);
        }

        private Product findProductById(int id)
        {
            foreach (Product item in productList)
            {
                if (item.Id == id) return item;
            }
            return null; 
        }

        private Cart checkProductOnCart(Product product)
        {
            foreach (Cart item in enCarrito)
            {
                if (item.Product.Id == product.Id)
                {
                    return item;
                }
            }
            return new Cart(product, 0);
        }
    }
}