using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class dashboard : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd,cmd1;
    OleDbDataAdapter da,da1,da2;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
     if(!Page.IsPostBack)
        {

            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
            con.Open();
            cmd = new OleDbCommand("select * from tblsub", con);
            OleDbCommand cmd1 = new OleDbCommand("select * from tblstaff where susername <>'Admin'", con);
            OleDbCommand cmd2 = new OleDbCommand("select * from tblstu", con);
            da = new OleDbDataAdapter(cmd);
            da1 = new OleDbDataAdapter(cmd1);
            da2 = new OleDbDataAdapter(cmd2);
            da.Fill(ds, "tblsub");
            da1.Fill(ds1, "tblstaff");
            da2.Fill(ds2, "tblstu");
            ddlsub.DataSource = ds.Tables[0];
            ddlsub1.DataSource = ds.Tables[0];
            ddlfac.DataSource = ds1.Tables[0];
            ddlstu.DataSource = ds2.Tables[0];
            ddlsub.DataTextField = "s_nm";
            ddlsub.DataValueField = "s_id";
            ddlsub1.DataTextField = "s_nm";
            ddlsub1.DataValueField = "s_id";
            ddlfac.DataTextField = "susername";
            ddlfac.DataValueField = "susername";
            ddlstu.DataTextField = "snm";
            ddlstu.DataValueField = "snm";
            ddlfac.DataBind();
            ddlsub.DataBind();
            ddlstu.DataBind();
            ddlsub1.DataBind();
            con.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from tbldata where snm='"+ddlfac.SelectedValue.ToString()+"' AND s_id="+ddlsub.SelectedValue+"", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "tbldata");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("stu_main.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0 )
        {
            Panelfaculty.Visible = true;
            Panelstudent.Visible = false;
        }

        if (RadioButtonList1.SelectedIndex == 1 )
        {
            Panelfaculty.Visible = false;
            Panelstudent.Visible = true;
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("stu_main.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from tblsdata where s_nm='" + ddlstu.SelectedValue.ToString() + "' AND s_id=" + ddlsub1.SelectedValue + "", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "tblsdata");
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();
        con.Close();
    }
}