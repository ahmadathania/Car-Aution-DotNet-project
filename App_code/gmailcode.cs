using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Net.Mail;
using System.Net.NetworkInformation;


using System.Net;







public class GmailSender
{
    public GmailSender()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static bool SendMail(string gMailAccount, string password, string to, string subject, string message)
    {
        try
        {
            NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(gMailAccount);
            msg.To.Add(new MailAddress(to));
            msg.Subject = subject;
            msg.Body = message;
            msg.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.Send(msg);

            return true;
        }
        catch (Exception)
        {
            return false;
        }

    }
}


