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
        protected void Page_Load(object sender, EventArgs e)
        {
            added = (List<Product>)Session["enCarrito"];
            reducer(added);
        }

        public void reducer(List<Product> added)
        {
          Cart toFill = new Cart();
            foreach (Product item in added.Distinct())
            {
                toFill.Id = item.Id;
                toFill.Added = item;
                toFill.Quantity = added.Count(x => x == item);
            }

          filtered.Add(toFill);
        }
    }
}