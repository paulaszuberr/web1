<%@ Page Language="C#" AutoEventWireup="true" CodeFile="koniecZamowienia.aspx.cs" Inherits="koniecZamowienia" %>
    
<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="bodyContent" runat="server">

<asp:Label ID="thankMsg" runat="server" >Dziękujemy za dokonanie zakupu!</asp:Label>
     <br />

<asp:Label ID="LabelInfo" runat="server" >Zamówienie zostanie zrealizowane po odnotowaniu wpłaty w wysokości: </asp:Label><br />
      
<asp:Label ID="returnLink" runat="server" ><a href="oferta.aspx">Powrót do oferty</a></asp:Label>
    <br />
   
    
    </asp:Content>
