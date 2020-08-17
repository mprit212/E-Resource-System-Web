using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class stu_reg : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    //string constrg = System.Configuration.ConfigurationManager.AppSettings["eres"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {


    }


    void clear()
    {
        txtsnm.Text = "";
        txtemail.Text = "";
        txtdob.Text = "";
        txterno.Text = "";

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand("insert into tblstu (snm,semail,smno,seno,sdob) values('"+txtsnm.Text+"','"+txtemail.Text+"','"+txtdob.Text+"','"+txterno.Text+"','"+txtdob1.Text+"') ", con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds,"tblstu");
        clear();
        lblmesg.Visible = true;
        con.Close();



    }

    protected void Btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("stulogin.aspx");
    }
}