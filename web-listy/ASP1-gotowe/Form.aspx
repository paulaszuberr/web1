<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Form.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formularz</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>
        Formularz zapisowy</h1>
    <h3>
        Uzupelnij swoje dane i zatwierdz!</h3>
    <h3>
        <asp:Image ID="userInformationImage" runat="server" 
            ImageUrl="~/images/user.png" 
            style="z-index: 1; left: 10px; top: 109px; position: absolute" />
    </h3>
    <h3>
       <table class="style1">
          <tr>
             <td valign="top">
                <asp:Image ID="firstNameImage" runat="server" ImageUrl="~/images/fname.png" />
                <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="NameRequiredFieldValidator" runat="server"
                    ControlToValidate="firstNameTextBox"
                        ErrorMessage="To pole jest wymagane!"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
             </td>
             <td valign="top">
                <asp:Image ID="lastNameImage" runat="server" ImageUrl="~/images/lname.png" />
                <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox>
                &nbsp;np. &quot;Kaptur&quot;<asp:RegularExpressionValidator  ID="lastNameTextBoxV" runat="server"
                 ControlToValidate="lastNameTextBox" Display="Dynamic" 
                 ErrorMessage="Nazwisko musi zaczynac sie wielka litera!" ForeColor="Red"
                 ValidationExpression="[A-Z][a-z]+"></asp:RegularExpressionValidator>
                 <br />
                 <br />
             </td>
          </tr>
          <tr>
             <td valign="top">
                <asp:Image ID="emailImage" runat="server" ImageUrl="~/images/email.png" />
                <asp:TextBox ID="emailTextBox" runat="server" ></asp:TextBox>
                &nbsp;np. &quot;<a href="mailto:email@domain.pl">email@domain.pl</a>&quot;<br />
                 <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" 
                        runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" 
                        ErrorMessage="Proszę wprowadzić email w odpowiednim formacie." 
                        ForeColor="#CC0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                     <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" 
                        ControlToValidate="EmailTextBox" Display="Dynamic" 
                        ErrorMessage="Proszę uzupełnić email." ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
             <td valign="top">
                <asp:Image ID="phoneImage" runat="server" ImageUrl="~/images/phone.png" />
                <asp:TextBox ID="phoneTextBox" runat="server" ></asp:TextBox>
                 &nbsp;np. &quot;555-555-555&quot;<br />
                    <asp:RegularExpressionValidator ID="PhoneRegularExpressionValidator" 
                        runat="server" ControlToValidate="PhoneTextBox" Display="Dynamic" 
                        ErrorMessage="Proszę wprowadzić nr telefonu w odpowiednim formacie." 
                        ForeColor="#CC0000" ValidationExpression="^[0-9]{3}-[0-9]{3}-[0-9]{3}$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="PhoneRequiredFieldValidator" runat="server" 
                        ControlToValidate="PhoneTextBox" Display="Dynamic" 
                        ErrorMessage="Proszę uzupełnić nr telefonu." ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
          </tr>
       </table>
       <p>
        Oceń naszą stronę w skali od 1 do 10: <br />
        (1=słabo, 10=super)<br />
           <asp:TextBox ID="RangeTextBox" runat="server"></asp:TextBox>
           <br />
           <asp:RangeValidator ID="RangeValidator2" runat="server"
            ControlToValidate="RangeTextBox" Display="Dynamic"
           
            ErrorMessage="Proszę wprowadzić odpowiednią wartość." ForeColor="Red" 
            MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
       </p>

       <p>
       Jaki jest twój humor (1-10)? <br />
           <asp:TextBox ID="MoodTextBox" runat="server"></asp:TextBox>
            <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server"
        ControlToCompare="RangeTextBox" ControlToValidate="MoodTextBox"
        Display="Dynamic" 
         ErrorMessage="Twój humor jest gorszy od tej strony, zmień to! ;)"
         ForeColor="#006600" Operator="GreaterThanEqual" Type="Integer">
         </asp:CompareValidator>

       </p>

       <p>
          <asp:Button ID="registerButton" runat="server" Text="Zarejestruj sie!" />
       </p>
    
    <asp:label ID="outputLabel" runat="server" visible="false"></asp:label>



    </form>
</body>

</html>
