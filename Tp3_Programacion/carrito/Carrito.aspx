<%@ Page Title="Carrito" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="carrito.Carrito" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <asp:Label runat="server" ID="lblPru"></asp:Label>
       <% 
           if (filtered !=null)
           {

           foreach (domain.Cart item in filtered)
           {
               //comentario para que aparezca
               %>
             <div class="row">
                 <div class="col-md-4">
                     <div style="display: flex; flex-direction:column; justify-content: center; text-align:center">
                         <img class="img-responsive" src="<%=item.Added.urlImagen %>" alt="Alternate Text" />
                         <h1><%=item.Added.Nombre %></h1>
                     </div>
                 </div>
                 <div class="col-md-4">
                     <p>Cantidad: <%=item.Quantity %></p>
                 </div>

             </div>
       <%-- <div style="height: 400px; width: 300px; margin:10px auto; text-align:center">
            <img class="img-responsive" src="<%=item.urlImagen %>" alt="Alternate Text" />
            <h1 id="nombreProducto"><%=item.Nombre %></h1>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <div style="display:flex; flex-direction:row; justify-content:space-around">
                <p><%=item.Precio %></p>
                <%--<asp:Button runat="server" ID="btnAgregarCarrito" onClick="AgregarCarrito_Click" Text="+" />--%>
                    <%--<button>+</button>
                </a>
            </div>
        </div>--%>



                

       <%
           } 
           
           }%>
        </div>
</asp:Content>
