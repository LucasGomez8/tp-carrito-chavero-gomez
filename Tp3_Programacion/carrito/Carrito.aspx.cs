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
    public partial class Carrito : System.Web.UI.Page
    {
        public List<Product> added { get; set; }
        public List<Cart> filtered { get; set; }

        public Carrito()
        {
            filtered = new List<Cart>();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            added = (List<Product>)Session["enCarrito"];
            if (added != null)
            {
                reducer(added);
            }
        }

        public void reducer(List<Product> x)
        {
            List<Cart> aux = new List<Cart>();
            Cart toFill = new Cart();


            foreach (Product item in x.Distinct())
            {
                toFill.Id = item.Id;
                toFill.Added = item;
                toFill.Quantity = x.Count(q => q.codArticulo == item.codArticulo);
                aux.Add(toFill);
            }

            var group = aux.Distinct();
            foreach (var item in group)
            {
                filtered.Add(item);
            }


        }
    }
}