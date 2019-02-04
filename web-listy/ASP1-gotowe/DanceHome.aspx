<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DanceHome.aspx.vb" Inherits="DanceHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .danceStyle
        {
            color: #3366FF;
            font-size: xx-large;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
         <h1 id="wstep">
			Witaj drogi gościu!<br>Jestesmy szkola tanca - Dirty dancing! <br>Dzieki nam zaczniesz chodzic tanecznym krokiem!
		</h1>
			
		
		<h2 id="wstep2">
			<b>Zapraszamy do zapoznania sie z naszą oferta i cennikiem!</b>
		</h2>
            <a href="Form.aspx">Formularz</a>
        <h2>

        </h2>
            <a href="Oferta.aspx">Oferta</a>
        <h2>
			Aktualny czas na serwerze:</h2>
    <p>
			<asp:Label ID="timeLabel" runat="server" CssClass="danceStyle" 
                style="z-index: 1; left: 10px; top: 270px; position: absolute"></asp:Label>
		</p>
    
    <div>
    <br />
    <asp:Button runat="server" Text="ClickMe" ID="btnClick" />
    <br />
    <br />
   <asp:Label runat="server" ID="lblClick" />
    </div>
	
    		
		
    </form>
         			
		
</body>
</html>
