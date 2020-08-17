using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class stu_main : System.Web.UI.Page
{
    OleDbConnection con, con1;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    protected int selectedIndex = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            lblhello.Text = "Welcome " + Session["snm"] + ", How May I Help You?";

            Panel1.Visible = false;
            //   Panel2.Visible = false;
            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
            con.Open();
            cmd = new OleDbCommand("select * from tblsub", con);
            da = new OleDbDataAdapter(cmd);
            da.Fill(ds, "tblsub");
            ddlsub.DataSource = ds.Tables[0];
            ddlssub.DataSource = ds.Tables[0];
            ddlsub.DataTextField = "s_nm";
            ddlsub.DataValueField = "s_id";
            ddlssub.DataTextField = "s_nm";
            ddlssub.DataValueField = "s_id";
            ddlsub.DataBind();
            ddlssub.DataBind();
            // Fun();// bind view drop down list of subject (view resurces)(ddlssub)
            con.Close();
            
        }         

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            Panel2.Visible = false;
            Panel1.Visible = true;

        }


        else if (RadioButtonList1.SelectedIndex == 1)
        {

            lblmeg.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = true;

        }

        else if (RadioButtonList1.SelectedIndex == 2)
        {
            lblmeg.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Response.Redirect("dashboard.aspx");
        }


        else if (RadioButtonList1.SelectedIndex == 3)
        {
            lblmeg.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Response.Redirect("survey.aspx");
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {

        Session.Clear();
        Response.Redirect("stulogin.aspx");

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

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("insert into tblsdata (s_year,s_sem,a_year,link,about,type,s_nm,s_id) values('" + ddlyr.SelectedValue.ToString() + "','" + ddlsem.SelectedValue.ToString() + "','" + ddlay.SelectedValue.ToString() + "','" + txtlink.Text + "','" + txtdesc.Text + "','" + ddltype.SelectedValue.ToString() + "','" + Session["snm"].ToString() + "','" + ddlsub.SelectedValue.ToString() + "')", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "tblsdata");
        con.Close();
        lblmeg.Visible = true;
        txtlink.Text = "";
        txtdesc.Text = "";

        Panel1.Visible = false;


    }

    public void refreshdata2()
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("select tblsdata.d_id,tblsub.s_nm AS SUBJECT,link AS LINK,about AS ABOUT,s_sem AS SEM,tblsdata.s_nm AS STUDENT  from tblsdata,tblsub where tblsdata.s_id=tblsub.s_id  AND tblsdata.s_id=" + ddlssub.SelectedValue.ToString() + " AND s_year='" + ddlsyr.SelectedValue.ToString() + "' AND s_sem='" + ddlssem.SelectedValue.ToString() + "' AND tblsdata.s_nm='" + Session["snm"].ToString() + "' ", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "tblsdata");
        Session["mydataset"] = ds;
        GridView4.DataSource = ds;
        GridView4.DataBind();
       
        con.Close();

    }

    protected void btnview_Click(object sender, EventArgs e)
    {

        //con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb"); con.Open();
        //cmd = new OleDbCommand("select s_id AS SUBJECT,link AS LINK,about AS ABOUT,type AS TYPE,s_nm AS Student from tblsdata where s_id=" + ddlssub.SelectedValue.ToString() + " AND s_year='" + ddlsyr.SelectedValue.ToString() + "' AND s_sem='" + ddlssem.SelectedValue.ToString() + "' AND s_nm='" + Session["snm"].ToString() + "' ", con);
        //da = new OleDbDataAdapter(cmd);
        ////Response.Write(cmd.CommandText);
        //da.Fill(ds, "tblsdata");
        //GridView4.DataSource = ds.Tables[0];
        //GridView4.DataBind();
       refreshdata2();
//        con.Close();


    }

    protected void ddlssem_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddlsyr_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlsyr.Text == "FIRST YEAR")
        {
            ddlssem.Items.Clear();
            ddlssem.Items.Add("SEM-1");
            ddlssem.Items.Add("SEM-2");
        }


        else if (ddlsyr.Text == "SECOND YEAR")
        {
            ddlssem.Items.Clear();
            ddlssem.Items.Add("SEM-3");
            ddlssem.Items.Add("SEM-4");
        }

        else if (ddlsyr.Text == "THIRD YEAR")
        {
            ddlssem.Items.Clear();
            ddlssem.Items.Add("SEM-5");
            ddlssem.Items.Add("SEM-6");


        }

        else if (ddlsyr.Text == "MSC-1")
        {
            ddlssem.Items.Clear();
            ddlssem.Items.Add("SEM-1");
            ddlssem.Items.Add("SEM-2");


        }

        else if (ddlsyr.Text == "MSC-2")
        {
            ddlssem.Items.Clear();
            ddlssem.Items.Add("SEM-3");
            ddlssem.Items.Add("SEM-4");


        }

    }

    protected void Btndellink0_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in GridView4.Rows)
        {

            CheckBox chck = gvrow.FindControl("CheckBox1") as CheckBox;
            if (chck.Checked)
            {
                var Label = gvrow.FindControl("lbldid") as Label;
                con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
                con.Open();
                cmd = new OleDbCommand("delete from tblsdata where d_id=@d_id", con);
                cmd.Parameters.AddWithValue("d_id", int.Parse(Label.Text));
                //con.Open();
                int id = cmd.ExecuteNonQuery();

                con.Close();

                refreshdata2();
               // fun3();

            }
        }

    }

    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void GridView4_SelectedIndexChanged1(object sender, EventArgs e)
    {
        selectedIndex = GridView4.SelectedIndex;
    }

    protected void Btnprofile_Click(object sender, EventArgs e)
    {
        Response.Redirect("profilestu.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("view.aspx");
    }
}
