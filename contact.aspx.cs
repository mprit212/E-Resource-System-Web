using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();


    protected void Page_Load(object sender, EventArgs e)
    { 
              //  Label1.Visible = false;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("insert into mst_Feedback (Nm,Mail,Subject,Feedback) values('" + txtName.Text + "','" + txtMail.Text + "','" + txtSubject.Text + "','" + txtMessage.Text + "')", con);

        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_Feedback");
        txtName.Text = "";
        txtMail.Text = "";
        txtSubject.Text = "";
        txtMessage.Text = "";

        Label1.Visible = true;
        con.Close();
    }
}