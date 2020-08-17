using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Windows.Forms;


public partial class updatestu : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
            con.Open();
            cmd = new OleDbCommand("select * from tblstu where snm='" + Session["snm"].ToString() + "'", con);
            //int cnt;
            OleDbDataReader reader = cmd.ExecuteReader();
            // cnt = Convert.ToInt32(cmd.ExecuteScalar());
            if (reader.Read())
            {
                //reader.Read();
                //  Response.Write("login succesful");
                //  imgbtn.ImageUrl = reader["logo"].ToString();
                txtsnm.Text = reader["snm"].ToString();
                txtsemail.Text = reader["semail"].ToString();
                txtdob.Text = reader["sdob"].ToString();
                txteno.Text = reader["seno"].ToString();
                //txturl.Text = reader["url"].ToString();

            }


        }
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("update tblstu set snm='" + txtsnm.Text + "',semail='" + txtsemail.Text + "',sdob='" + txtdob.Text + "',seno='" + txteno.Text + "' where snm='" + Session["snm"].ToString() + "'", con);
        da = new OleDbDataAdapter(cmd);
        // Response.Write(cmd.CommandText);
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "tblstu");
        // Response.Write("<script>alert('Login Fail')</script>");
        Response.Write("<Script>alert('Updated successfully')</script>");
        con.Close();
       
    }

   
}