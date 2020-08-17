using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.OleDb;

using System.Collections.Specialized;

public partial class studentlogin : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();

        OleDbCommand cmd1 = new OleDbCommand("select count(*) from tblstu where snm ='" + txtname.Text + "' AND smno <>'" + txtmno.Text + "'", con);
        int cnt1;
        cnt1 = Convert.ToInt32(cmd1.ExecuteScalar());

        if (cnt1 == 1)
        {
            Response.Write("<script>alert('Sorry, Student is Not Registered ')</script>");
        }

        else
        {




            panel1.Visible = false;
            panel2.Visible = true;
            Random random = new Random();
            int value = random.Next(1001, 9999);
            String destinationaddr = "91" + txtmno.Text;
            string message = "Your OTP Number is " + value + " ( Sent By : E-Resources System)";
            string message1 = HttpUtility.UrlEncode(message);

            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                    {"apikey","5I3zyVWkhPI-SZCfErvI4HKLaJIi6FLj4TZSTJGqVr"},
                    {"numbers",destinationaddr},
                    {"message",message},
                    {"sender","TXTLCL"}
                    });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;
            }


        }
    }
        protected void Button1_Click(object sender, EventArgs e)
    {

        if (Txtotp.Text == Session["otp"].ToString())
        {
            Response.Redirect("stu_main.aspx");

        }
        else
        {
            Response.Write("<script>alert('Sorry, OTP is Wrong , Login Fail.. ')</script>");

        }

    }
        protected void btnbk_Click(object sender, EventArgs e)
        {
            panel1.Visible = true;
            panel2.Visible = false;
        }
}