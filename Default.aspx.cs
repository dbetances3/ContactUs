using System;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        MailMessage feedBack = new MailMessage();
        feedBack.To.Add("dbetances2@gmail.com");
        feedBack.From = new MailAddress("dbetances2@gmail.com");
        feedBack.Subject = txtSubject.Text;

        feedBack.Body = "Sender Name: " + txtName.Text + "<br /><br />Sender Email: " + txtMail.Text + "<br /><br />" + txtMessage.Text;
        feedBack.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Port = 587;
        smtp.EnableSsl = true;
        NewMethod(smtp);
        //Or your Smtp Email ID and Password
        smtp.Send(feedBack);
        Label1.Text = "Thanks for contacting us";
    }

    private static void NewMethod(SmtpClient smtp)
    {
        smtp.Credentials = new System.Net.NetworkCredential("dbetances2@gmail.com", "Dianita8!");
    }
}
