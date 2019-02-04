<%@ Page Language="C#" AutoEventWireup="true" CodeFile="oferta.aspx.cs" Inherits="oferta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Oferta</title>
</head>
<body>
    
         <h1 id="wstep">
			Witaj drogi gościu!<br>Jestesmy szkola tanca - Dirty dancing! <br>Dzieki nam zaczniesz chodzic tanecznym krokiem!
		</h1>
			
		
		<h2 id="wstep2">
			<b>Zapraszamy do zapoznania sie z naszą oferta i cennikiem!</b>
		</h2>
          
   <form runat="server">
 
    <br />
    	<div id="container2">
            <div id="category_option">
            <br />
                <asp:Label ID="promptLabel1" runat="server" Text="Wybierz rodzaj tańca: "></asp:Label>
            <br />
            <asp:RadioButtonList ID="serviceTypeList" runat="server">
                    <asp:ListItem Value="0" Selected>Gorące</asp:ListItem>
                    <asp:ListItem Value="1">Klasygi</asp:ListItem>
                    <asp:ListItem Value="2">Nowoczesne</asp:ListItem>

                </asp:RadioButtonList>
                <br />
                <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click"
                Text="Wybierz" />
                <br />
                <br />
                <asp:Label ID="cartLabel" runat="server" Visible="False"></asp:Label>
                <br />
                </div>
            <asp:Label ID="responseLabel" runat="server" Visible="False"></asp:Label>
            <asp:CheckBoxList ID="checkboxList0" runat="server" Visible="False" OnSelectedIndexChanged="CartAdd" AutoPostBack="true">
                <asp:ListItem Value="5">Coś tam - 5 zł</asp:ListItem>
                <asp:ListItem Value="4">Coś tam - 4 zł</asp:ListItem>
                <asp:ListItem Value="3">Coś tam - 3 zł</asp:ListItem>
                <asp:ListItem Value="2">Coś tam - 2 zł</asp:ListItem>
                <asp:ListItem Value="1">Coś tam - 1 zł</asp:ListItem>
            </asp:CheckBoxList>
           
            <asp:CheckBoxList ID="checkboxList1" runat="server" Visible="False" OnSelectedIndexChanged="CartAdd" AutoPostBack="true">
                <asp:ListItem Value="5">Inne Coś tam - 5 zł</asp:ListItem>
                 <asp:ListItem Value="4">Inne Coś tam - 4 zł</asp:ListItem>
                  <asp:ListItem Value="3">Inne Coś tam - 3 zł</asp:ListItem>
                   <asp:ListItem Value="2">Inne Coś tam - 2 zł</asp:ListItem>
                    <asp:ListItem Value="1">Inne Coś tam - 1 zł</asp:ListItem>
            </asp:CheckBoxList>
           
            <asp:CheckBoxList ID="checkboxList2" runat="server" Visible="False" OnSelectedIndexChanged="CartAdd" AutoPostBack="true">
            <asp:ListItem Value="5">Jeszcze Inne Coś tam - 5 zł</asp:ListItem>
                 <asp:ListItem Value="4">Jeszcze Inne Coś tam - 4 zł</asp:ListItem>
                  <asp:ListItem Value="3">Jeszcze Inne Coś tam - 3 zł</asp:ListItem>
                   <asp:ListItem Value="2">Jeszcze Inne Coś tam - 2 zł</asp:ListItem>
                    <asp:ListItem Value="1">Jeszcze Inne Coś tam - 1 zł</asp:ListItem>
            </asp:CheckBoxList>

            <br />
            <asp:Label ID="orderLabel" runat="server" Visible="False"><a href="confirm_order.aspx">Zamów</a></asp:Label>
            </div>	
            </form>
</body>
</html>
