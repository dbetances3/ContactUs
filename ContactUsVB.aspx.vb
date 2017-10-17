Imports System.Net.Mail
Partial Class ContactUsVB
    Inherits System.Web.UI.Page


    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim feedBack As New MailMessage()
        feedBack.[To].Add("dbetances2@gmail.com")
        feedBack.From = New MailAddress("dbetances2@gmail.com")
        feedBack.Subject = txtSubject.Text

        feedBack.Body = (("Sender Name: " + txtName.Text & "<br><br>Sender Email: ") + txtMail.Text & "<br><br>") + txtMessage.Text
        feedBack.IsBodyHtml = True
        Dim smtp As New SmtpClient()
        smtp.Host = "smtp.gmail.com"
        'Or Your SMTP Server Address
        smtp.Port = 587
        smtp.EnableSsl = True
        smtp.Credentials = New System.Net.NetworkCredential("dbetances2@gmail.com", "password")
        'Or your Smtp Email ID and Password
        smtp.Send(feedBack)
        Label1.Text = "Thanks for contacting us"
    End Sub
End Class
