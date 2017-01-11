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
        //新增這段
        TextBox textbox = new TextBox();
        if (PreviousPage == null && !IsCrossPagePostBack)
        {
            //Response.Write("沒有來源網頁");
        }
        else
        {
            textbox = (TextBox)PreviousPage.FindControl("tbxUserID");
            lblPersonal.Text = textbox.Text;
        }
    }

    protected void btnWrite_Click(object sender, EventArgs e)
    {
        Server.Transfer("WritePage.aspx", true);
    }
}