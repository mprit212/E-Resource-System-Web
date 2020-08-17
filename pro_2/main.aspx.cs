using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class main : System.Web.UI.Page
{
    OleDbConnection con,con1;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();

    //gridview1 -> view resources(faculty member)
    //gridview4-> delete resources(faculty member)


    void fun()
    {

        if (Session["unm"].ToString() == "Admin" || Session["unm"].ToString() == "admin")

        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            panel3.Visible = false;
            panel4.Visible = true;
            

        }


    }

    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!Page.IsPostBack)
        {

            lblhello.Text = "Welcome " + Session["unm"] + ", How May I Help You?";
            
            Panel1.Visible = false;
            Panel2.Visible = false;
            panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            
            fun();//selection for admin or faculty member
            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
            con.Open();
            cmd = new OleDbCommand("select * from tblsub", con);
            da = new OleDbDataAdapter(cmd);
            da.Fill(ds, "tblsub");
            ddlsub.DataSource = ds.Tables[0];
            ddlsub.DataTextField = "s_nm";
            ddlsub.DataValueField = "s_id";
            ddlsub.DataBind();
            Fun();// bind view drop down list of subject (view resurces)(ddlssub)
            con.Close();

            refreshdata();
            refreshdata1();
            refreshdata2();



        }



    }

    public void Fun()
    {
        con1= new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con1.Open();
        cmd = new OleDbCommand("select * from tblsub", con1);
        da = new OleDbDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        da.Fill(ds1, "tblsub");
        ddlssub.DataSource = ds1.Tables[0];
        ddlssub.DataTextField = "s_nm";
        ddlssub.DataValueField = "s_id";
        ddlssub.DataBind();
        con1.Close();

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (RadioButtonList1.SelectedIndex == 0)
        {    
            Panel2.Visible = false;
            Panel1.Visible = true;
           
        }


        else 
        {

            lblmeg.Visible=false;
            Panel1.Visible = false;
            Panel2.Visible = true;
            
        }


        
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {

       
            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
           con.Open();
            cmd = new OleDbCommand("insert into tbldata (s_year,s_sem,a_year,link,about,type,snm,s_id) values('" + ddlyr.SelectedValue.ToString() + "','" + ddlsem.SelectedValue.ToString() + "','" + ddlay.SelectedValue.ToString() + "','" + txtlink.Text + "','" + txtdesc.Text + "','" + ddltype.SelectedValue.ToString() + "','"+Session["unm"].ToString()+ "','"+ ddlsub.SelectedValue.ToString() + "')", con);
            da = new OleDbDataAdapter(cmd);
            da.Fill(ds, "tbldata");
            con.Close();
        lblmeg.Visible = true;      
        txtlink.Text = "";
        txtdesc.Text = "";

        Panel1.Visible = false;
       
        

        
        
    }


    void fun3()
    {

        paneldel.Visible = true;
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb"); con.Open();
        cmd = new OleDbCommand("select tblsub.s_nm AS SUBJECT,link AS LINK,about AS ABOUT,type AS TYPE,snm AS FACULTY from tbldata,tblsub where tbldata.s_id=tblsub.s_id  AND  tbldata.s_id=" + ddlssub.SelectedValue.ToString() + " AND s_year='" + ddlsyr.SelectedValue.ToString() + "' AND s_sem='" + ddlssem.SelectedValue.ToString() + "' AND snm='" + Session["unm"].ToString() + "' ", con);
        da = new OleDbDataAdapter(cmd);
        //Response.Write(cmd.CommandText);
        da.Fill(ds, "tbldata");
      //  Session["mydataset"] = ds;
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        refreshdata2();
        con.Close();

    }

    protected void btngo_Click(object sender, EventArgs e)
    {

        paneldel.Visible = true;
            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb"); con.Open();
            cmd = new OleDbCommand("select s_id AS SUBJECT,link AS LINK,about AS ABOUT,type AS TYPE,snm AS FACULTY from tbldata where s_id=" + ddlssub.SelectedValue.ToString() + " AND s_year='" + ddlsyr.SelectedValue.ToString() + "' AND s_sem='" + ddlssem.SelectedValue.ToString() + "' AND snm='" + Session["unm"].ToString()+"' ", con);
            da = new OleDbDataAdapter(cmd);
      //Response.Write(cmd.CommandText);
            da.Fill(ds,"tbldata");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        refreshdata2();
        con.Close();
        
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
       
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        OleDbCommand cmd1 = new OleDbCommand("select count(*) from tblsub where s_nm='" +txtsub.Text +"'", con);
        int cnt1;
        cnt1 = Convert.ToInt32(cmd1.ExecuteScalar());
        if (cnt1 == 1)
        {

            Response.Write("<script>alert('This subject already exists')</script>");
            con.Close();
        }
        else
        {
            cmd = new OleDbCommand("insert into tblsub (s_nm) values('" + txtsub.Text + "')", con);
            da = new OleDbDataAdapter(cmd);
            da.Fill(ds, "tblsub");
            con.Close();
            refreshdata();
            txtsub.Text = " ";
            // Panel6.Visible = false;
        }
    }

    

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList2.SelectedIndex == 0)
        {

            Panel5.Visible = true;
            Panel6.Visible = false;

        }

        else
        {
          
            Panel6.Visible = true;
            Panel5.Visible = false;

        }

    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("login.aspx");
    }

    protected void Btninsert_Click(object sender, EventArgs e)
    {
        //refreshdata1();
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();

        OleDbCommand cmd2 = new OleDbCommand("select count(*) from tblstaff where susername='" + txtname.Text + "'", con);
        int cnt2;
        cnt2 = Convert.ToInt32(cmd2.ExecuteScalar());
        if (cnt2 == 1)
        {

            Response.Write("<script>alert('This Faculty member already exists')</script>");
            con.Close();
        }

        else
        {


            cmd = new OleDbCommand("insert into tblstaff (susername,spwd,email_id) values('" + txtname.Text + "','" + txtpass.Text + "')", con);
            da = new OleDbDataAdapter(cmd);
            da.Fill(ds, "tblstaff");
            con.Close();
            txtname.Text = " ";
            txtpass.Text = " ";
            txtcpass.Text = " ";
            refreshdata1();
            //  Panel5.Visible = false;
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

    protected void ddlssem_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }


    public void refreshdata()
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from tblsub ORDER BY s_nm", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds,"tblsub");
        GridView2.DataSource = ds;
        GridView2.DataBind();
        con.Close();

    }


    protected void Btndel_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in GridView2.Rows)
        {

            CheckBox chck = gvrow.FindControl("CheckBox1") as CheckBox;
            if (chck.Checked)
            {
                var Label = gvrow.FindControl("Label1") as Label;
                con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
                con.Open();
                cmd = new OleDbCommand("delete from tblsub where s_id=@s_id", con);
                cmd.Parameters.AddWithValue("s_id", int.Parse(Label.Text));
               //con.Open();
                int id = cmd.ExecuteNonQuery();
                
                con.Close();
                refreshdata();


            }
        }


    }

    public void refreshdata1()
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from tblstaff ORDER BY susername", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds,"tblstaff");
        GridView3.DataSource = ds;
        GridView3.DataBind();
        con.Close();

    }

    protected void Btnstaffdel_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow gvrow in GridView3.Rows)
        {

            CheckBox chck = gvrow.FindControl("CheckBox2") as CheckBox;
            if (chck.Checked)
            {
                var Label = gvrow.FindControl("lblid") as Label;
                con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
                con.Open();
                cmd = new OleDbCommand("delete from tblstaff where staff_id=@staff_id", con);
                cmd.Parameters.AddWithValue("staff_id", int.Parse(Label.Text));
                //con.Open();
                int id = cmd.ExecuteNonQuery();

                con.Close();
                refreshdata1();


            }
        }


    }

    public void refreshdata2()
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
        con.Open();
        //cmd = new OleDbCommand("select * from tbldata where snm='"+Session["unm"].ToString()+"'" , con);
        cmd = new OleDbCommand("select  tbldata.d_id,tblsub.s_nm AS SUBJECT,link AS LINK,about AS ABOUT,s_sem AS SEM,snm AS FACULTY from tbldata,tblsub where tbldata.s_id=tblsub.s_id  AND snm='" + Session["unm"].ToString() + "'   ", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "tbldata");
        Session["mydataset"] = ds;
        GridView4.DataSource = ds;
        GridView4.DataBind();
        con.Close();

    }

    protected void Btndellink_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow gvrow in GridView4.Rows)
        {

            CheckBox chck = gvrow.FindControl("CheckBox1") as CheckBox;
            if (chck.Checked)
            {
                var Label = gvrow.FindControl("lbldid") as Label;
                con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb");
                con.Open();
                cmd = new OleDbCommand("delete from tbldata where d_id=@d_id", con);
                cmd.Parameters.AddWithValue("d_id", int.Parse(Label.Text));
                //con.Open();
                int id = cmd.ExecuteNonQuery();
 
                con.Close();

                refreshdata2();
                fun3();

            }
        }


    }

    protected void txtsub_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}