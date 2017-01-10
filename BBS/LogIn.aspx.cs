using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        Server.Transfer("Register.aspx", true);
    }

    protected void btnmisspassword_Click(object sender, EventArgs e)
    {
        Server.Transfer("MissPassWord.aspx", true);
    }



    protected void btnsign_Click(object sender, EventArgs e)
    {
        if (tbxAccount.Text != "" && tbxPassword.Text != "")
            btnsign.PostBackUrl = "~/HomePage.aspx";
        else lblMsg.Text = "請輸入帳號與密碼";



    }
}