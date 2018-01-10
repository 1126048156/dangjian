using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class change_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string pw1, pw2;
            pw1 = TextBox1.Text;
            pw2 = TextBox2.Text;
            if (Session["s_password"].ToString() == GetMD5(pw1))
            {
                //Session["password"] =pw1;
                string strConnection2 = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
                SqlConnection Connection2 = new SqlConnection(strConnection2);
                Connection2.Open();
                string sql = "update student set s_password='" + GetMD5(pw2) + "' where s_sno='" + Session["s_sno"] + "'";
                SqlCommand command2 = new SqlCommand(sql, Connection2);
                command2.ExecuteNonQuery();
                Connection2.Close();

                Response.Write("<script language='javascript'>alert('修改密码成功!');</script>");
                //Response.Redirect("user_login.aspx");

                Response.Write("<script language='javascript'>javascript:location.href='user_login.aspx'</script>");
            }

            else
            {
                Response.Write("<script language='javascript'>alert('原密码不对，请重新输入!');</script>");
            }
        }
        catch(Exception ex)
        {
            //Response.Redirect("~/user_login.aspx");
        }
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