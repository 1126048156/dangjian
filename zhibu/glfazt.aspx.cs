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

public partial class glfazt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        Connection.Open();
        string a ;
        a= this.GridView1.SelectedDataKey["s_identity"].ToString();
        if (a == "非党员")
        {
            string strSQL = "update student set s_identity='入党积极分子' where  s_sno='" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "'";    
            SqlCommand cmd2 = new SqlCommand(strSQL, Connection);       
            cmd2.ExecuteNonQuery();
        }
        else if (a == "入党积极分子")
        {
            string strSQL = "update student set s_identity='确定培养成熟' where  s_sno='" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "'";
            SqlCommand cmd2 = new SqlCommand(strSQL, Connection);
            cmd2.ExecuteNonQuery();
        }
        else if (a == "确定培养成熟")
        {
            string strSQL = "update student set s_identity='支部大会通过' where  s_sno='" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "'";
            SqlCommand cmd2 = new SqlCommand(strSQL, Connection);
            cmd2.ExecuteNonQuery();
        }
        else if (a == "支部大会通过")
        {
            string strSQL = "update student set s_identity='党组织大会通过' where  s_sno='" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "'";
            SqlCommand cmd2 = new SqlCommand(strSQL, Connection);
            cmd2.ExecuteNonQuery();
        }
        else if (a == "党组织大会通过")
        {
            string strSQL = "update student set s_identity='预备党员' where  s_sno='" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "'";
            string strSQL1 = "insert into development values('" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "',0)";
            SqlCommand cmd3 = new SqlCommand(strSQL1, Connection);
            cmd3.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand(strSQL, Connection);
            cmd2.ExecuteNonQuery();
        }
        //string sql = "delete from Documents where  s_sno='" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "'";
        
        //SqlCommand cmd3 = new SqlCommand(sql, Connection);
        //cmd3.ExecuteNonQuery();
       // Connection.Close();
        Response.Redirect(Request.Url.ToString());
        Response.Write("<script>alert('该同志已进入下一阶段')</script>");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        int i;
        //执行循环，保证每条数据都可以更新
        for (i = 0; i < GridView1.Rows.Count + 1; i++)
        {
            //首先判断是否是数据行
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //当鼠标停留时更改背景色
                e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
                //当鼠标移开时还原背景色
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
            }
        }
        PostBackOptions myPostBackOptions = new PostBackOptions(this);
        myPostBackOptions.AutoPostBack = false;
        myPostBackOptions.RequiresJavaScriptProtocol = true;
        myPostBackOptions.PerformValidation = false;
        String evt = Page.ClientScript.GetPostBackClientHyperlink(sender as GridView, "Select$" + e.Row.RowIndex.ToString());
        e.Row.Attributes.Add("onclick", evt);
    }
}