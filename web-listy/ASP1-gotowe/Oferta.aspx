<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Oferta.aspx.vb" Inherits="Oferta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
	<h2 id="wstep">U nas ceny są <mark>najlepsze</mark></h2> 	

	<p style="font-family: Cambria; font-size: xx-large; color: #FF33CC; background-color: #000000">
		100% Zadowolonych klientów
	</p>
	<table border="4">
	<tr>
		<th id="nagłówek">Cennik zajęć</th>
	</tr>

	<tr>
		<th></th>
		<th scope="col">Poniedziałek</th>
		<th>Wtorek</th>
		<th>Środa</th>
	</tr>

	<tr>
		<th rowspan="2">17:00</th>
		<td>Latino podst 25 zł</td>
		<td>Modern podst 25 zł</td>
		<td>Cha-cha podst 25 zł</td>
	</tr>

	<tr>
		<td colspan="3" id="dzieci">Dzieci latino 30 zł</td>
	</tr>

	<tr>
		<td>
			<table border="2">
				<tr>
					<td>Zapraszamy</td>
					<td>Serdecznie LOVE </td>
				</tr>
			</table>
		</td>
	</tr>
	
	</table>

	<aside>
		<h1 id="org">Orgaznizujemy  również warsztaty weekendowe</h1>
		<p>Więcej info w lokalu</p>
		<footer>
			Autor: Ja Polak
			<p>Pozdrawiam</p>
		</footer>
	</aside>

	<details>
		<summary>Copyright 1999-2018.</summary>
		<p> wykonane przez Spółkę LOKA - TOKA </p>
		<p> Cały kontent zastrzeżony </p>
	</details>

    </form>
</body>
</html>
