using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class survey : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            //lblmsg.Text = "welcome " + Session["snm"].ToString() +" . ";
            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
            con.Open();
            cmd = new OleDbCommand("select * from tblsub", con);
            da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds,"tblsub");
            ddlqu1.DataSource = ds.Tables[0];
            ddlqu1.DataTextField = "s_nm";
            ddlqu1.DataValueField = "s_nm";
            ddlqu1.DataBind();

            con.Close();
        
        
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("insert into tblsurvey1 (snm,answer,ans2,ans3) Values('"+Session["snm"]+"','"+ddlqu1.SelectedValue.ToString()+"','"+DropDownList1.SelectedValue.ToString()+"','"+DropDownList2.SelectedValue.ToString()+"')", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "tblsurvey1");
        con.Close();
    }
}