
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles registerButton.Click

        If Page.IsPostBack Then

            If Page.IsValid Then

                outputLabel.Text = "Dziekujemy za wyslanie formularza.<br />" + "Otrzymaliśmy następujące informacje:<br />"
                outputLabel.Text += String.Format("<br />Imie: " + firstNameTextBox.Text + "<br /> Nazwisko: " + lastNameTextBox.Text + "<br /> email: " +
                                                  emailTextBox.Text + "<br /> telefon:" + phoneTextBox.Text + " <br /> Nasza strona wg cb: " + RangeTextBox.Text +
                                                  " <br /> Twój humor: " + MoodTextBox.Text)
                outputLabel.Visible = True


            End If

        End If



    End Sub

End Class
