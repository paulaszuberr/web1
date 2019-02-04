
Partial Class DanceHome
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        'wyswietla aktualny czas serweera'
        timeLabel.Text = DateTime.Now.ToString("hh:mm:ss")

    End Sub

    Protected Sub btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClick.Click

        lblClick.Text = "Surprise motherlover!"

    End Sub




End Class

