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

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string connstr = "Data Source=WIN-N4LTN1FOFQH\\SQLEXPRESS;Initial Catalog=UNI;" +
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
        btnSubmit.PostBackUrl = "~/HomePage.aspx?user=" + tbxUserName.Text;
    }
}