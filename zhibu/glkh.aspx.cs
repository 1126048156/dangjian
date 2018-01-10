using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using Microsoft.Office.Interop.Word;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.IO;
public partial class zhibu_glkh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        string sql2 = "insert into test1 (t_time,t_type,t_date,t_num,t_num1) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        SqlCommand cmd2 = new SqlCommand(sql2, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('创建成功！')</script>");
        Response.Redirect(Request.Url.ToString()); 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        string sql2 = "insert into test (t_name,t_sno,t_sco,t_time) values('" + TextBox8.Text + "','" + TextBox6.Text + "'," + TextBox7.Text + ",'" + TextBox9.Text + "')";
        SqlCommand cmd2 = new SqlCommand(sql2, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('录入成功！')</script>");
        Response.Redirect(Request.Url.ToString()); 

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}