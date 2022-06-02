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
        protected void Page_Load(object sender, EventArgs e)
        {
            string cad = Request.QueryString["pID"];
            lblPru.Text = cad;
            //if (!String.IsNullOrEmpty(cad))
            //{
            //    CommerceConnecction cc = new CommerceConnecction();
            //    Product x = new Product();
            //    x = cc.buscarPorCod(cad);
            //    added.Add(x);
            //}

        }
    }
}