<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="carrito.Producto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="display:flex; flex-wrap:wrap; align-items:center">
        <asp:Label runat="server" ID="lblPru"></asp:Label>
       <% foreach (domain.Product item in productList)
           {
               txtNombre.Text = item.Nombre;
                //comentario para que aparezca
               %>
        <div style="height: 400px; width: 300px; margin:10px auto; text-align:center">
            <img class="img-responsive" src="<%=item.urlImagen %>" alt="Alternate Text" />
            <h1 id="nombreProducto"><%=item.Nombre %></h1>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <div style="display:flex; flex-direction:row; justify-content:space-around">
                <p><%=item.Precio %></p>
                <asp:Button runat="server" ID="btnAgregarCarrito" onClick="AgregarCarrito_Click(<%#Eval(txtNombre) %>)" Text="+"/>
            </div>
        </div>
                

       <%
           } %>
    </div>
</asp:Content>
