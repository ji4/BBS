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

    protected void Button1_Click(object sender, EventArgs e)
    {
        LinkButton change = (LinkButton)sender;
        Label articleID = (Label)change.Parent.FindControl("articleIDLabel");
        Server.Transfer("ArticleContent.aspx?id=" + articleID.Text, true);
    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT [articleID], [articleTitle], [PostTime], [ReplyCount], [PostUser], [CategoryID] FROM [articleInfo] ORDER BY [articleID] DESC";
        //SelectCommand = "SELECT [articleID], [articleTitle], [PostTime], [ReplyCount], [PostUser], [CategoryID] FROM [articleInfo] ORDER BY [articleID] DESC"
    }

    protected void btnChat_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT articleID, articleTitle, PostTime, ReplyCount, PostUser, CategoryName FROM articleInfo, Category  WHERE articleInfo.CategoryID = Category.CategoryID AND articleInfo.CategoryID = 1  ORDER BY [articleID] DESC";
    }

    protected void btnFood_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT articleID, articleTitle, PostTime, ReplyCount, PostUser, CategoryName FROM articleInfo, Category  WHERE articleInfo.CategoryID = Category.CategoryID AND articleInfo.CategoryID = 2  ORDER BY [articleID] DESC";
    }

    protected void btnSport_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT articleID, articleTitle, PostTime, ReplyCount, PostUser, CategoryName FROM articleInfo, Category  WHERE articleInfo.CategoryID = Category.CategoryID AND articleInfo.CategoryID = 3  ORDER BY [articleID] DESC";
    }



    protected void btnBoy_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT articleID, articleTitle, PostTime, ReplyCount, PostUser, CategoryName FROM articleInfo, Category  WHERE articleInfo.CategoryID = Category.CategoryID AND articleInfo.CategoryID = 4  ORDER BY [articleID] DESC";
    }

    protected void btnGirl_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT articleID, articleTitle, PostTime, ReplyCount, PostUser, CategoryName FROM articleInfo, Category  WHERE articleInfo.CategoryID = Category.CategoryID AND articleInfo.CategoryID = 5  ORDER BY [articleID] DESC";
    }

}