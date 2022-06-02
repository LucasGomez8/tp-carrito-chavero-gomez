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
    public partial class Carrito : Page
    {
        public List<Cart> filtered { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            filtered = Session["enCarrito"] != null
                ? (List<Cart>)Session["enCarrito"]
                : new List<Cart>();

        }

    }
}