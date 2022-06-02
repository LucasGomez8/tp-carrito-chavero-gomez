<%@ Page Title="Carrito" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="carrito.Carrito" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
       <div style="display:flex; flex-wrap:wrap; align-items:center">
        <asp:Label runat="server" ID="lblPru"></asp:Label>
       <% 
           if (added !=null)
           {

           foreach (domain.Product item in added)
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
                <%--<asp:Button runat="server" ID="btnAgregarCarrito" onClick="AgregarCarrito_Click" Text="+" />--%>
                    <button>+</button>
                </a>
            </div>
        </div>
                

       <%
           } 
           
           }%>
    </div>
</asp:Content>
