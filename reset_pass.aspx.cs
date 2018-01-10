using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class reset_pass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["s_sno"] != null)
        {
            Label4.Text = Session["s_sno"].ToString();
            return;
        }

        Response.Write("<script language='javascript'>alert('会话已过期, 请重新发送邮件以修改密码!');</script>");
        Response.Write("<script language='javascript'>javascript:location.href='user_login.aspx'</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            string pw1;
            pw1 = TextBox1.Text;
            string strConnection2 = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
            SqlConnection Connection2 = new SqlConnection(strConnection2);
            Connection2.Open();
            string sql = "update student set s_password='" + GetMD5(pw1) + "' where s_sno='" + Session["s_sno"] + "'";
            SqlCommand command2 = new SqlCommand(sql, Connection2);
            command2.ExecuteNonQuery();
            Connection2.Close();
            Response.Write("<script language=javascript>alert('重置密码成功!');</script>");
            Response.Write("<script language=javascript>javascript:location.href='user_login.aspx'</script>");
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
