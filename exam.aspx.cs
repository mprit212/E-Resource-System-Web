using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;

public partial class exam : System.Web.UI.Page
{
    OleDbConnection con1,con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            bindsub();
            bindyr();
            bindgrid();


        }
    }


    public void bindsub()
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from tblsub", con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "tblsub");
        ddlsub.DataSource = ds.Tables[0];
        ddlsub.DataTextField = "s_nm";
        ddlsub.DataValueField = "s_id";
        ddlsub.DataBind();
    
    
    }

    public void bindgrid()
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("select tblsub.s_nm AS SUBJECT,image,about,type,sem from tblmain,tblsub where tblmain.s_id=tblsub.s_id  ", con);
        da = new OleDbDataAdapter(cmd);
        //Response.Write(cmd.CommandText);
        DataSet ds6 = new DataSet();
        da.Fill(ds6, "tblmain");
        GridView1.DataSource = ds6.Tables[0];
        GridView1.DataBind();
        //refreshdata2();
        con.Close();
    
    }

    public void bindyr()
    {

        con1 = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con1.Open();
        cmd = new OleDbCommand("select * from tblyear", con1);
        da = new OleDbDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        da.Fill(ds1, "tblyear");
        ddlyr.DataSource = ds1.Tables[0];
        ddlyr.DataTextField = "ynm";
        ddlyr.DataValueField = "ynm";
        ddlyr.DataBind();
        con1.Close();
        ddlyr.Items.Insert(0, new ListItem("Please select Year", "0"));
        // ddlsem.Items.Clear();
        ddlsem.Items.Insert(0, new ListItem("Please select Semster", "0"));


    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
           panel2.Visible = false;
            Panel1.Visible = true;

        }


        else if (RadioButtonList1.SelectedIndex == 1)
        {

            lblmeg.Visible = false;
            Panel1.Visible = false;
            panel2.Visible = true;
            bindgrid();

        }

    }
    protected void ddlyr_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlyr.Text == "FIRST YEAR")
        {
            ddlsem.Items.Clear();
            ddlsem.Items.Add("SEM-1");
            ddlsem.Items.Add("SEM-2");
        }


        else if (ddlyr.Text == "SECOND YEAR")
        {
            ddlsem.Items.Clear();
            ddlsem.Items.Add("SEM-3");
            ddlsem.Items.Add("SEM-4");
        }

        else if (ddlyr.Text == "THIRD YEAR")
        {
            ddlsem.Items.Clear();
            ddlsem.Items.Add("SEM-5");
            ddlsem.Items.Add("SEM-6");


        }

        else if (ddlyr.Text == "MSC-1")
        {
            ddlsem.Items.Clear();
            ddlsem.Items.Add("SEM-1");
            ddlsem.Items.Add("SEM-2");


        }

        else if (ddlyr.Text == "MSC-2")
        {
            ddlsem.Items.Clear();
            ddlsem.Items.Add("SEM-3");
            ddlsem.Items.Add("SEM-4");


        }


    }
    protected void ddlsem_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {

        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        fileupload1.SaveAs(Server.MapPath("~/xyz/") + Path.GetFileName(fileupload1.FileName));
        String link = "xyz/" + Path.GetFileName(fileupload1.FileName);
        OleDbCommand cmd = new OleDbCommand("insert into [tblmain] ([syear],[sem],[ayear],[image],[about],[type],[s_id]) values ('" + ddlyr.SelectedValue.ToString() + "','" + ddlsem.SelectedValue.ToString() + "','" + ddlay.SelectedValue.ToString() + "','" + link + "','" + txtdesc.Text + "','" + ddltype.SelectedValue.ToString() +  "','" + ddlsub.SelectedValue.ToString() + "')", con);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds5 = new DataSet();
        da.Fill(ds5, "tblmain");
        lblmeg.Visible = true;
        Panel1.Visible = false;
        con.Close();

    }
    protected void ddlsub_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}