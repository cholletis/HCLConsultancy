﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Consultancy.UserControl
{
    public partial class UCSendMail : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["emailIds"] != string.Empty)
            {
                txtToEmail.Text = Request.QueryString["emailIds"];
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            //    System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            //    mail.To.Add("sureshch3112@gmail.com");
            //    mail.From = new MailAddress("sureshch3112@gmail.com", "Email head", System.Text.Encoding.UTF8);
            //    mail.Subject = "This mail is send from asp.net application";
            //    mail.SubjectEncoding = System.Text.Encoding.UTF8;
            //    mail.Body = "This is Email Body Text";
            //    mail.BodyEncoding = System.Text.Encoding.UTF8;
            //    mail.IsBodyHtml = true;
            //    mail.Priority = MailPriority.High;
            //    SmtpClient client = new SmtpClient();
            //    client.Credentials = new System.Net.NetworkCredential("sureshch3112@gmail.com", "Suresh@14");
            //    client.Port = 587;
            //    client.Host = "smtp.gmail.com";
            //    client.EnableSsl = true;
            //    try
            //    {
            //        client.Send(mail);
            //        //Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully Send...');if(alert){ window.location='SendMail.aspx';}</script>");
            //    }
            //    catch (Exception ex)
            //    {
            //        Exception ex2 = ex;
            //        string errorMessage = string.Empty;
            //        while (ex2 != null)
            //        {
            //            errorMessage += ex2.ToString();
            //            ex2 = ex2.InnerException;
            //        }
            //        //Page.RegisterStartupScript("UserMsg", "<script>alert('Sending Failed...');if(alert){ window.location='SendMail.aspx';}</script>");
            //    }
        }
    }
}