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
        {
            userAccount = Request.Form["tbxAccount"];
            lblName.Text = userAccount;
        }
    }

    protected void btnWrite_Click(object sender, EventArgs e)
    {
        //btnWrite.PostBackUrl = "~/WritePage.aspx?userAccount=" + userAccount;
        btnWrite.PostBackUrl = "~/WritePage.aspx";
        //Response.Redirect("WritePage.aspx ? userAccount = " + userAccount);
        //Server.Transfer("WritePage.aspx?userAccount="+userAccount, false);
    }
}