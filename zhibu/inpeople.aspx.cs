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


public partial class zhibu_inpeople : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        string sql2 = "insert into communist (c_sno,c_contactor,c_profession,c_partytime) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        SqlCommand cmd2 = new SqlCommand(sql2, conn);
        cmd2.ExecuteNonQuery();
        string sql3 = "insert into inpeople (in_sno,in_ounit,in_profession,in_date,in_people) values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + TextBox6.Text + "')";
        SqlCommand cmd3 = new SqlCommand(sql3, conn);
        cmd3.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('创建成功！')</script>");
        Response.Redirect(Request.Url.ToString()); 

    }
}