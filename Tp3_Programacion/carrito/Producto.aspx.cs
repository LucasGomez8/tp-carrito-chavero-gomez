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
    public partial class Producto : System.Web.UI.Page
    {

        public List<Product> productList { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            CommerceConnecction cc = new CommerceConnecction();
            productList = cc.listarProducto();
        }
    }
}