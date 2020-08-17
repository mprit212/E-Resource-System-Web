using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profilestu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatestu.aspx");
    }

    protected void Btnclear_Click(object sender, EventArgs e)
    {
        Response.Redirect("stu_main.aspx");
    }
}