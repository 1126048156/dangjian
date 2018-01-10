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

public partial class zhibu_gldangfei : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        string sql2 = "insert into money2 (m2_moneytime,m2_sno,m2_name,m2_condition) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','未交')";
        SqlCommand cmd2 = new SqlCommand(sql2, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('创建成功！')</script>");
        Response.Redirect(Request.Url.ToString()); 
    }
    protected void GridView2_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        string sql2 = "update money1 set m_ynum=m_ynum+1,m_nnum=m_nnum-1 where m_moneytime='" + DropDownList1.Text + "'";
        SqlCommand cmd2 = new SqlCommand(sql2, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        Response.Redirect(Request.Url.ToString()); 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        string sql2 = "insert into money1 (m_moneytime,m_profession,m_date,m_ynum,m_nnum) values('" + TextBox4.Text + "','" + TextBox5.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
        SqlCommand cmd2 = new SqlCommand(sql2, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('创建成功！')</script>");
        Response.Redirect(Request.Url.ToString()); 
    }
}