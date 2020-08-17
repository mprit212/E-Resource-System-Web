using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Windows.Forms;

public partial class login : System.Web.UI.Page
{


   // string constrg = System.Configuration.ConfigurationManager.AppSettings["eres"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();


    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {

              OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select count(*) from tblstaff where susername='" + txtusername.Text + "' and spwd='" + txtpwd.Text + "' ", con);
        int cnt;
        cnt = Convert.ToInt32(cmd.ExecuteScalar());

        if (cnt == 1)
        {
            Response.Write("login succesful");
            Session["unm"] = txtusername.Text;

            Response.Redirect("main.aspx?unm=" + txtusername.Text);
        }

        else
        {
           Response.Write("<script>alert('login fail')</script>");
            
        }

    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close()</script>");

    }
}