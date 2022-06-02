<%@ Page Title="Carrito" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="carrito.Carrito" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <asp:Label runat="server" ID="lblPru"></asp:Label>
       <% 
           if (filtered != null)
           {

               foreach (domain.Cart item in filtered)
               {
                   %>
                 <div class="row">
                     <div class="col-md-4">
                         <div style="display: flex; flex-direction:column; justify-content: center; text-align:center">
                             <img class="img-responsive" src="<%=item.Product.urlImagen %>" alt="Alternate Text" />
                             <h1><%=item.Product.Nombre %></h1>
                         </div>
                     </div>
                     <div class="col-md-4">
                         <p>Cantidad: <%=item.Quantity %></p>
                         <p>Precio: <%=item.getAcumulateAmount()%></p>
                     </div>

                 </div>
           <%  }   
           }%>
        </div>
</asp:Content>
