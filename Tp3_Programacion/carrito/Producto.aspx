<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="carrito.Producto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script>
        function OnClickAddProduct(id) {
            __doPostBack("OnClickAddProduct", id);
        }
    </script>

    <div style="display:flex; flex-wrap:wrap; align-items:center">
        <asp:Label runat="server" ID="lblPru"></asp:Label>
       <% foreach (domain.Product item in productList)
           {
               %>
        <div style="height: 400px; width: 300px; margin:10px auto; text-align:center">
            <img class="img-responsive" src="<%=item.urlImagen %>" alt="Alternate Text" />
            <h1 id="nombreProducto"><%=item.Nombre %></h1>
            <div style="display:flex; flex-direction:row; justify-content:space-around">
                <p><%=Math.Round(item.Precio) %></p>
                <button onclick="OnClickAddProduct(<%=item.Id.ToString()%>)" >
                       +
                </button>
            </div>
        </div>
                

       <% } %>
    </div>
</asp:Content>
