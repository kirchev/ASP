using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonSend_Click(object sender, EventArgs e)
    {

    }

    private void mailSend()
    {
        SendMail mail = new SendMail();
        try
        {
            mail.SendEMail(TextBoxFullName.Text, TextBoxPhone.Text, TextBoxEmail.Text, TextBoxMessage.Text);
        }
        catch
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Error!", "alert(`" + mail.error + "`)", true);
        }
    }
}