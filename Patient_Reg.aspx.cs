﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;


public partial class Patient_Reg : System.Web.UI.Page
{
    id ids = new id();
    string owrid, owrpwd, yes;
    string gMailAccount = "v1111jha@gmail.com";
    string password="vinay97choudhary";
    string to;
    string subject = "secret key for login";
    string message;
    string Securitykey;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label15.Text = Convert.ToString(ids.idgeneration1());
        if (TextBox12.Text=="")
        {
            Random val = new Random();
            int rno = val.Next(12345, 54321);
            TextBox12.Text = Convert.ToString(rno);

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into patientreg values('" + Label15.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox12.Text + "')", con);
        cmd.ExecuteNonQuery();
        
        RegisterStartupScript("msg", "<script>alert('Hello " + TextBox1.Text + " ! Your Login UserName : " + TextBox9.Text + " Your Login Password : " + TextBox10.Text + " Security Key is : " + TextBox12.Text + "')</script>");
                
       // password = (string)Session["pass"];
        message = "<hr><br>Hello " + "<b>" + TextBox1.Text + " ! </b><br><br> Your Login UserName :" + "<b>" + TextBox9.Text + " </b><br><br>" + "Your Login Password : <b>" + TextBox10.Text + "</b><br><br> Security Key is : " + "<b>" + TextBox12.Text + "</b>";
        to = TextBox3.Text;
        NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(gMailAccount);
        msg.To.Add(new MailAddress(to));
        msg.Subject = subject;
        msg.Body = message;
        msg.IsBodyHtml = true;

        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.Send(msg);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }

        con.Close();
        Label15.Text = Convert.ToString(ids.idgeneration1());
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
