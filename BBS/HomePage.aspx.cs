using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["user"] != null)
            lblPersonal.Text = Request.QueryString["user"];
    }

    protected void btnWrite_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["user"] != null)
            Server.Transfer("WritePage.aspx", true);
        else Response.Redirect("~/Login.aspx");
    }
}