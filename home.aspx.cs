using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void rbl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbl.SelectedIndex==0)
        {
            Response.Redirect("login1.aspx");
        }

        else if(rbl.SelectedIndex==1)
        {
            Response.Redirect("stulogin.aspx");

        }
    }
}