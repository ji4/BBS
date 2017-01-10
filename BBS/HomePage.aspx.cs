using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    string userAccount;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["tbxAccount"] != null)
            userAccount = Request.QueryString["tbxAccount"];
    }

    protected void btnWrite_Click(object sender, EventArgs e)
    {
        Server.Transfer("WritePage.aspx?userAccount="+userAccount, true);
    }
}