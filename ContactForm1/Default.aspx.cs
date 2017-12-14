using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Development Task - Siddharth Padki";
        myMessage.From = new MailAddress("siddharth.padki@btinternet.com", "Siddharth Padki");
        myMessage.To.Add(new MailAddress("developers@mcmnet.co.uk"));

        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);
    }

}