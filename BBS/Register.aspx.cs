using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    string szInsertUser = "insert into [UserInfo] " +
        "([UserID], [UserName], [Password], [Gender], [Email], [CreateDate])" +
        "values (@UserID, @UserName, @Password, @Gender, @Email, @CreateDate)";

    public TextBox shareinput { get; private set; }   //新增這行

    protected void Page_Load(object sender, EventArgs e)
    {
        shareinput = tbxUserID;  //新增這行
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string connstr = "Data Source=RUE-PC\\SQLEXPRESS;Initial Catalog=UNI;" +
            "Integrated Security=True";
        SqlConnection conn = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand(szInsertUser, conn);
        cmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = tbxUserID.Text;
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = tbxUserName.Text;
        cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = tbxPassword.Text;
        cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = RadioBtnListSex.SelectedValue;
        cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = tbxEmail.Text;
        cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = DateTime.Now;

        conn.Open();
        int rows = cmd.ExecuteNonQuery();//檢查結果, 影響幾筆資料, >1成功
        conn.Close();
        btnSubmit.PostBackUrl = "~/HomePage.aspx?user=" + tbxUserName.Text;  //新增這行

    }

    protected void tbxUserID_TextChanged(object sender, EventArgs e)
    {
        /* DataView dv = ((DataView)SqlDataSource1.Select(new DataSourceSelectArguments()));
         dv.RowFilter = "LastName = '" + tbxUserID.Text.Trim() + "'";
         if (dv.Count >= 1)
         {
             Label1.Text = "已有相關資料";
         }
         else
         {
             Label1.Text = "可以註冊";
         }*/
    }
}