using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demowp : System.Web.UI.Page
{
    protected int selectedIndex = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            System.Data.DataTable dt = new System.Data.DataTable();
            dt.Columns.AddRange(new System.Data.DataColumn[3] {
new System.Data.DataColumn("Id", typeof(int)),
new System.Data.DataColumn("Name", typeof(string)),
new System.Data.DataColumn("Country",typeof(string)) });
            dt.Rows.Add(1, "John Hammond", "United States");
            dt.Rows.Add(2, "Mudassar Khan", "India");
            dt.Rows.Add(3, "Suzanne Mathews", "France");
            dt.Rows.Add(4, "Robert Schidner", "Russia");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectedIndex = GridView1.SelectedIndex;
    }

    protected void lnkShare_Click(object sender, EventArgs e)
    {
        GridViewRow row = this.GridView1.Rows[selectedIndex];
    string id = row.Cells[0].Text;
    string name = row.Cells[1].Text;
    string country = row.Cells[2].Text;
    string script = "window.onload = function() { ShareOnWhatsApp('" + id + "','" + name + "','" + country + "'); };";
    ClientScript.RegisterStartupScript(this.GetType(), "script", script, true);
    }
}

