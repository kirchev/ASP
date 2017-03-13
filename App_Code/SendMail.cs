using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Net.Mail;

/// <summary>
/// Summary description for SendMail
/// </summary>
public class SendMail
{
  
    private string name;
    private string phone;
    private string email;
    private string content;
    public string error;

    private string Name
    {
        set
        {
            if(value.Length >= 3)
            {
                string reValue = Regex.Replace(value, @"[^a-zA-Z ]+", "");
                this.name = reValue;
            }
            else
            {
                throw new ArgumentException(error = "Your name" + value + "is not valid");
            }
        }

        get
        {
            return this.name;
        }
    }

    private string Phone
    {
        set
        {
            if (value.Length >= 7 && value.Length <= 14)
                {
                string regValue = Regex.Replace(value, @"[^0-9+]", "");
                this.phone = regValue;
                }
        }

        get { return this.phone; }
    }

    private string Email
    {
        set
        {
            if (value.Length > 5)
            {
                string refValue = Regex.Replace(value, @"[â-zA-Z0-9._@]", "");
                this.email = refValue;
            }
            else
            {
                throw new ArgumentException(error = "Your email address " + value + "is not valid");
            }
        }

        get
        {
            return this.email;
        }
    }

    private string Content
    {
        set
        {
            if(value.Length >20)
            {
                string regValue = Regex.Replace(value, @"<>", "");
                this.content = regValue;
            }
            else
            {
                throw new ArgumentException(error = "Your message" + value + "is not valid");
            }
                
        }
        get
        {
            return this.content;
        }
    }


    public void SendEMail(string NameValue, string PhoneValue, string EmailValue, string ContentValue)
    {
        this.Name = NameValue;
        this.Phone = PhoneValue;
        this.Email = EmailValue;
        this.Content = ContentValue;

        try
        {
            SmtpClient mySmtpClient = new SmtpClient("192.168.0.100");
            mySmtpClient.UseDefaultCredentials = false;

            MailAddress from = new MailAddress(Email);
            MailAddress to = new MailAddress("example@example.com");
            MailMessage myMail = new MailMessage(from, to);

            myMail.Subject = "Email from " + Name;
            myMail.SubjectEncoding = System.Text.Encoding.UTF8;

            myMail.Body = "<b>This is email from your website</b>"
                + "Name: " + Name
                + "Email: " + Email
                + "Phone: " + Phone
                + "Content: " + Content;

            myMail.BodyEncoding = System.Text.Encoding.UTF8;

            myMail.IsBodyHtml = true;
            mySmtpClient.Send(myMail);
                          
        }
        catch(SmtpException ex)
        {
            throw new ApplicationException("SmtpException: " + ex.Message);
        }

    }
    


    
}