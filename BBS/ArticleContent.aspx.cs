using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ArticleContent : System.Web.UI.Page
{
    string id;
    string[] strCategoryName = { "0", "閒聊", "美食", "運動", "男", "女" };

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
          id = Request.QueryString["id"];
        else Response.Redirect("~/HomePage.aspx");

        string szSelectArticleInfo = "select * from [articleInfo] where [articleID] = " + id;
        //string szSelectArticleInfo = "select [CategoryName] from [Category], * from [articleInfo] where [Category.CategoryID] = " + id;

        string connstr = "Data Source=RUE-PC\\SQLEXPRESS;Initial Catalog=UNI;" +
            "Integrated Security=True";
        SqlConnection conn = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand(szSelectArticleInfo, conn);
        /*cmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = tbxUserID.Text;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = tbxUserName.Text;
        cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = tbxPassword.Text;
        cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = RadioBtnListSex.SelectedValue;
        cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = tbxEmail.Text;
        cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = DateTime.Now;*/

        conn.Open();

        SqlDataReader reader = cmd.ExecuteReader();

        //0 articleID, 1 articleTitle, 2 articleContent, 3 PostTime, 4 ReplyCount, 5 LastReplyTime, 6 PostUser, 7 CategoryID

        while (reader.Read())
        {
            lblArticleTitle.Text = reader["articleTitle"].ToString();
            lblArticleContent.Text = reader["articleContent"].ToString();
            lblPostTime.Text = reader["PostTime"].ToString();
            lblPostUser.Text = reader["PostUser"].ToString();
            lblCategoryID.Text = reader["CategoryID"].ToString();
        }
        reader.Close();

        for (int i = 1; i <= 5; i++)
            if (lblCategoryID.Text == i.ToString())
                lblCategoryID.Text = strCategoryName[i];
       
        int rows = cmd.ExecuteNonQuery();//檢查結果, 影響幾筆資料, >1成功
        conn.Close();
        //btnSubmit.PostBackUrl = "~/HomePage.aspx?user=" + tbxUserName.Text;  //新增這行
    }

    protected void btnWrite_Click(object sender, EventArgs e)
    {
        Server.Transfer("WritePage.aspx", true);
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