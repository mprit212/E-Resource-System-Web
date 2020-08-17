using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Drawing;

public partial class forgetpass : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = string.Empty;
        string password = string.Empty;
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("select susername,spwd from tblstaff where susername='" + TextBox2.Text +"' AND email_id='" + TextBox1.Text+"'", con);
        using (OleDbDataReader dbr = cmd.ExecuteReader())
        {
            if(dbr.Read())
            {
                username = dbr["susername"].ToString();
                password = dbr["spwd"].ToString();
            }

        }
        con.Close();

        if (!string.IsNullOrEmpty(password))
        {
            MailMessage mm = new MailMessage("pm9726812051@gmail.com", TextBox1.Text.Trim());
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "pm9726812051@gmail.com";
            NetworkCred.Password = "Maitrimehtamukeshbhai";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            lbmsg.ForeColor = Color.Green;
            lbmsg.Text = "Password has been sent to your email address.";
        }
        else
        {
            lbmsg.ForeColor = Color.Red;
            lbmsg.Text = "This email address or user name does not match our records.";
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login1.aspx");
    }
}