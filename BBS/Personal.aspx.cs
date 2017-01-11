using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Personal : System.Web.UI.Page
{
    string gender;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = Request.QueryString["user"];
        string szSelectGender = "select * from [UserInfo] where [UserName] = '"+ Request.QueryString["user"]+"'";
        
        string connstr = "Data Source=WIN-N4LTN1FOFQH\\SQLEXPRESS;Initial Catalog=UNI;" +
            "Integrated Security=True";
        SqlConnection conn = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand(szSelectGender, conn);
        
        conn.Open();

        SqlDataReader reader = cmd.ExecuteReader();
        
        while (reader.Read())
        {
            lblUser.Text = reader["UserName"].ToString();
            gender = reader["Gender"].ToString();
        }
        reader.Close();

        if (gender == "男")
            userPhoto.ImageUrl = "~/image/男生.jpg";
        else if(gender=="女")
            userPhoto.ImageUrl = "~/image/女生.jpg";
        int rows = cmd.ExecuteNonQuery();//檢查結果, 影響幾筆資料, >1成功
        conn.Close();
    }
}