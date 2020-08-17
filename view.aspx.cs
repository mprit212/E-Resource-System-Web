using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
//using System.Windows.Forms;

public partial class view : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)

    {
        DataSet ds = (DataSet)Session["mydataset"];

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = this.GridView1.SelectedRow;
        string subject = row.Cells[2].Text;
        string sm = row.Cells[5].Text;
        string abt = row.Cells[4].Text;
        string lik = row.Cells[3].Text;
        string script = "window.onload = function() { ShareOnWhatsApp('" + subject + "','" + sm + "','" + abt + "','" + lik + "'); };";
        ClientScript.RegisterStartupScript(this.GetType(), "script", script, true);
    }

    
}