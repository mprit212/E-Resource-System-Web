using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Windows.Forms;

public partial class update : System.Web.UI.Page
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
            cmd = new OleDbCommand("select * from tblstaff where susername='" + Session["unm"].ToString() + "'", con);
            //int cnt;
            OleDbDataReader reader = cmd.ExecuteReader();
            // cnt = Convert.ToInt32(cmd.ExecuteScalar());
            if (reader.Read())
            {
                //reader.Read();
                //  Response.Write("login succesful");
              //  imgbtn.ImageUrl = reader["logo"].ToString();
                txtsnm.Text = reader["susername"].ToString();
                txtsemail.Text = reader["email_id"].ToString();
                txtspwd.Text = reader["spwd"].ToString();
                //txturl.Text = reader["url"].ToString();

            }


        }
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("update tblstaff set susername='" + txtsnm.Text + "',email_id='" + txtsemail.Text + "',spwd='" + txtspwd.Text + "' where susername='" + Session["unm"].ToString() + "'", con);
        da = new OleDbDataAdapter(cmd);
       // Response.Write(cmd.CommandText);
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "tblstaff");
        Response.Write("<Script>alert('Updated successfully')</script>");
        con.Close();
    }

    protected void Btnclear_Click(object sender, EventArgs e)
    {
        txtsnm.Text = "";
        txtsemail.Text = "";
        txtspwd.Text = "";
       // txturl.Text = "";
    }
}