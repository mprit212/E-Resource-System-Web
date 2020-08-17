using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        String[] words = { "xxx","xvidoes","porn"};

        foreach (String s in words)
        {
            if (txtx.Text.IndexOf(String.Concat("", s), StringComparison.InvariantCultureIgnoreCase) != -1)
            {

                args.IsValid = false;
                return;

            }
            
        }

    }
}