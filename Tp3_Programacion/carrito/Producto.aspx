<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="carrito.Producto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/Producto.css" rel="stylesheet" text="text/css"/>
    <script>
        function OnClickAddProduct(id) {
            __doPostBack("OnClickAddProduct", id);
        }
    </script>

    <div class="row" style="margin-top: 10px;">
        <asp:Label runat="server" ID="lblPru"></asp:Label>
       <% foreach (domain.Product item in productList)
           {
               %>
        <div class="col-md-4">
            <div class="product__content">
                <div class="product-content__head">
                    <img class="img-responsive" src="<%=item.urlImagen %>" alt="Alternate Text" />
                    <h1 id="nombreProducto"><%=item.Nombre %></h1>
                </div>
                <div style="display:flex; flex-direction:row; justify-content:space-around">
                    <p style="font-size: 15px;">$<%=Math.Round(item.Precio) %></p>
                    <button style="display:inline-block; height: 30px;"onclick="OnClickAddProduct(<%=item.Id.ToString()%>)" >
                           +
                    </button>
                </div>
            </div>
        </div>
                

       <% } %>
    </div>
</asp:Content>
