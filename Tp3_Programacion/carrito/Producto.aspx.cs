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
        public List<Product> enCarrito;
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
            enCarrito = Session["enCarrito"] != null ? (List<Product>)Session["enCarrito"] : new List<Product>();

            enCarrito.Add(findProductById(Int32.Parse(id)));
            Session.Add("enCarrito", enCarrito);

            lblPru.Text = "Button Clicked" + id;            
        }

        private Product findProductById(int id)
        {
            foreach (Product item in productList)
            {
                if (item.Id == id) return item;
            }
            return null; 
        }
    }
}