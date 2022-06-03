<%@ Page Title="Carrito" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="carrito.Carrito" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="css/Carrito.css" rel="stylesheet" type="text/css"/>
    <div class="cartBody">
        <div class="cartContainer">
            <asp:Label runat="server" ID="lblPru"></asp:Label>
           <% 
               if (filtered != null)
               {

                   foreach (domain.Cart item in filtered)
                   {
                       %>
                     <div class="row rowitem">
                         <div class="col-md-4 item__container">
                             <div class="item-container__head">
                                 <img class="img-responsive img" src="<%=item.Product.urlImagen %>" alt="Alternate Text" />
                                 <h3><%=item.Product.Nombre %></h3>
                             </div>
                          </div>
                             <div class="col-md-2" style="height: 100%; width: 125px; margin: auto 0; display: flex; justify-content: center; align-items: center;">
                                 <p>x<%=item.Quantity %></p>
                             </div>
                             <div class="col-md-2" style="height: 100%; width: 125px; display: flex; justify-content: center; align-items: flex-start; flex-direction: column">
                                 <p>Precio Unitario: <%=Math.Floor(item.Product.Precio)%></p>
                                 <p>Precio Total: <%=Math.Floor(item.getAcumulateAmount())%></p>
                             </div>
                             <div class="col-md-2">
                                 <button>Borrar</button>
                             </div>
                       
                     </div>
               <%  }   
               }%>
            </div>
            <div class="col-md-4 cartButtons">
                <div class="row">
                    <button class="cartButtons__ok">Comprar</button>
                </div>
                <div class="row">
                    <button class="cartButtons__cancel">Cancelar</button>
                </div>
            </div>
        </div>
</asp:Content>
