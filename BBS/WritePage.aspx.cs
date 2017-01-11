using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WritePage : System.Web.UI.Page
{
    string userID;
    string szInsertArticle = "insert into [articleInfo] " +
        "([articleTitle], [articleContent], [PostTime], [ReplyCount], [PostUser], [CategoryID])" +
        "values (@articleTitle, @articleContent, @PostTime, @ReplyCount, @PostUser, @CategoryID)";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["user"] != null)
            userID = Request.QueryString["user"];
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        string connstr = "Data Source=RUE-PC\\SQLEXPRESS;Initial Catalog=UNI;" +
            "Integrated Security=True";
        SqlConnection conn = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand(szInsertArticle, conn);

        cmd.Parameters.Add("@articleTitle", SqlDbType.NVarChar).Value = tbxTitle.Text;
        cmd.Parameters.Add("@articleContent", SqlDbType.VarChar).Value = tbxContent.Text;
        cmd.Parameters.Add("@PostTime", SqlDbType.DateTime).Value = DateTime.Now;
        cmd.Parameters.Add("@ReplyCount", SqlDbType.Int).Value = 0;
        cmd.Parameters.Add("@PostUser", SqlDbType.NVarChar).Value = userID;
        cmd.Parameters.Add("@CategoryID", SqlDbType.Int).Value = int.Parse(listCategory.SelectedValue);

        conn.Open();
        int rows = cmd.ExecuteNonQuery();//檢查結果, 影響幾筆資料, >1成功
        conn.Close();

        Server.Transfer("HomePage.aspx", false);
    }
}