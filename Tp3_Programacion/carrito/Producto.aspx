<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="carrito.Producto" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row text-center">
            <% foreach (domain.Product item in productList)
                { %>
                
            <div class="col-md-4 text-center">
                <img class="img-responsive" style="height:300px; width: 300px;" src="<%= item.urlImagen %>" alt="<%=item.Nombre %>" />
                <h1><%=item.Nombre %></h1>
                <div class="row m-auto0">
                        <p><%=item.Precio %></p>
                        <asp:Button ID="Button1" runat="server" Text="+" />
                </div>
            </div>

               <% } %>
        </div>
    </div>
</asp:Content>
