using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class login1 : System.Web.UI.Page
{
    // string constrg = System.Configuration.ConfigurationManager.AppSettings["eres"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet ds = new DataSet();


    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {

        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();

        OleDbCommand cmd1 = new OleDbCommand("select count(*) from tblstaff where susername='" + txtusername.Text + "' AND spwd <>'" + txtpwd.Text +"'", con);
        int cnt1;
        cnt1 = Convert.ToInt32(cmd1.ExecuteScalar());

        if (cnt1 == 1)
        {
            Response.Write("<script>alert('Sorry, Password is Incorrect ')</script>");

        }

        else
        {




            OleDbCommand cmd = new OleDbCommand("select count(*) from tblstaff where susername='" + txtusername.Text + "' and spwd='" + txtpwd.Text + "' ", con);
            int cnt;
            cnt = Convert.ToInt32(cmd.ExecuteScalar());

            if (cnt == 1)
            {
                Response.Write("login succesful");
                Session["unm"] = txtusername.Text;

                Response.Redirect("main1.aspx");
            }

            else
            {
                Response.Write("<script>alert('Oops ,Login Fail !')</script>");

            }
        }

    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpwd.Text = "";

    }
}