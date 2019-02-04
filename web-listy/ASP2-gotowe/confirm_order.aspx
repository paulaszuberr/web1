<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirm_order.aspx.cs" Inherits="confirm_order" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="bodyContent" runat="server">

<div id="container1">
			<div id="logo">
				<h1>Dirty Dancing</h1>
				wiecej niz szkola tanca
			</div>

<asp:Label ID="LabelSummary" runat="server"  Visible="False" Text="Podsumowanie zamówienia" 
        Font-Bold="True" Font-Size="20pt"></asp:Label><br />
<asp:Label ID="LabelCart" runat="server" Visible="False" Text=""></asp:Label>
   <asp:Label ID="LabelTotalPrice" runat="server" Visible="false" Text="Suma: " Font-Bold="True"></asp:Label>
    <br />

<asp:Label ID="cartEmptyLabel" Visible="false" runat="server" CssClass="labelStyle" Text="Brak produktów w koszyku."></asp:Label>
    <br />
<asp:Label ID="promptLabel" runat="server" Text="Wybierz sposób dostawy zamówienia:"></asp:Label>
    <br />
<div style="margin-left:220px;">

<asp:RadioButtonList ID="serviceLocationList" runat="server" Visible="false"  AutoPostBack="true">
          <asp:ListItem Value="0" Selected>Osobiście w sklepie stacjonarnym- 0zł</asp:ListItem>
          <asp:ListItem Value="20">Dostawa kurierem- 20zł</asp:ListItem>
    

</asp:RadioButtonList>
</div>
<asp:Label ID="LabelTotal" runat="server" Visible="false" Text="Całkowita wartość zamówienia: " Font-Bold="True"></asp:Label>
    <br />
    <br />
</asp:Label>

<asp:Label ID="LabelConfirm" runat="server"><a href="koniecZamowienia.aspx">Potwierdź zamówienie</a></asp:Label>
     
     <br />
<asp:Label ID="returnLink" runat="server" CssClass="labelStyle"><a href="ofertaTorty.aspx">Powrót do oferty</a></asp:Label>
     
    </div>
    </asp:Content>
