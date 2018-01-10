using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class user_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
          Label4.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {      
        bool boolReturnValue = false;
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        String strSQL = "Select * From student";
        SqlCommand command = new SqlCommand(strSQL, Connection);
        SqlDataReader Dr;
        Connection.Open();
        Dr = command.ExecuteReader();
        while (Dr.Read())
        {
            if ((TextBox1.Text == Dr["s_sno"].ToString()) && (GetMD5(TextBox2.Text) == Dr["s_password"].ToString()) && Dr["s_identity"].ToString() == "非党员" )
            {
                Session["s_sno"] = TextBox1.Text;
                Session["s_password"] = GetMD5(TextBox2.Text);
                Response.Redirect("~/personal_center.aspx");
                boolReturnValue = true;
            }

            if ((TextBox1.Text == Dr["s_sno"].ToString()) && (GetMD5(TextBox2.Text) == Dr["s_password"].ToString()) && Dr["s_identity"].ToString() == "党员" && Dr["s_status"].ToString() == "党员")
            {
                Session["s_sno"] = TextBox1.Text;
                Session["s_password"] = GetMD5(TextBox2.Text);
                Response.Redirect("party_member/personal_center.aspx");
                boolReturnValue = true;
            }
            if ((TextBox1.Text == Dr["s_sno"].ToString()) && (GetMD5(TextBox2.Text) == Dr["s_password"].ToString()) && Dr["s_identity"].ToString() == "党员" && Dr["s_status"].ToString() == "党委书记")
            {
                Session["s_sno"] = TextBox1.Text;
                Session["s_password"] = GetMD5(TextBox2.Text);
                Response.Redirect("dangwei/personal_center.aspx");
                boolReturnValue = true;
            }
        }
        if(!boolReturnValue)
        {
            Label4.Text = "登录名或密码不正确!请重新登陆";
            Label4.Visible = true;
        }
        Dr.Close();
    }

    // 加密算法函数 8.3
    public static string GetMD5(string str)
    {
        byte[] b = System.Text.Encoding.Default.GetBytes(str);
        b = new System.Security.Cryptography.MD5CryptoServiceProvider().ComputeHash(b);
        string ret = " ";
        for (int i = 0; i < b.Length; i++)
        {
            ret += b[i].ToString("x").PadLeft(2, '0');
        }
        return ret;
    } 
}