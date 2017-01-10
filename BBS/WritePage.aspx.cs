using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WritePage : System.Web.UI.Page
{
    string userAccount;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["userAccount"] != null)
            userAccount = Request.QueryString["userAccount"];
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {

    }
}