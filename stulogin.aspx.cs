using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class stulogin : System.Web.UI.Page
{
   
    //string constrg = System.Configuration.ConfigurationManager.AppSettings["eres"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select * from tblstu where seno='" + txteno.Text + "' and sdob='" + txtdob.Text + "' ", con);
        OleDbDataReader reader = cmd.ExecuteReader();
        // cnt = Convert.ToInt32(cmd.ExecuteScalar());
        if (reader.Read())
        {
            //reader.Read();
            //  Response.Write("login succesful");
            
            lblid.Text = reader["snm"].ToString();
            Session["snm"] = lblid.Text;
            Session["seno"] = txteno.Text;

            Response.Redirect("stu_main.aspx");
        }

        else
        {
            Response.Write("<script>alert('Login Fail')</script>");
        }
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        Response.Redirect("stu_reg.aspx");
    }
}
