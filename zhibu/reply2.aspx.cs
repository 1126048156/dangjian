using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;

using Microsoft.Office.Interop.Word;
using System.Reflection;
using System.Web.Configuration;


public partial class reply2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
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
    public string Doc2Text(string docFileName)
    {          //实例化COM         
        ApplicationClass wordApp = new ApplicationClass();
        object fileobj = docFileName;
        object nullobj = System.Reflection.Missing.Value;          //打开指定文件（不同版本的COM参数个数有差异，一般而言除第一个外都用nullobj就行了）          
        Document doc = wordApp.Documents.Open(ref fileobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj);          //取得doc文件中的文本          
        string outText = doc.Content.Text.Replace("\a", "").Replace("\r", "\r\n");//替换空串为空。（word中\a代表空串)、替换回车为回车换行
        //关闭文件 
        doc.Close(ref nullobj, ref nullobj, ref nullobj);
        //关闭COM 
        wordApp.Quit(ref nullobj, ref nullobj, ref nullobj);         //返回 
        return outText;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string content;
        content = Doc2Text(Server.MapPath("../upload/" + this.GridView1.SelectedDataKey["Name_file"].ToString()));
        TextBox1.Text = content;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        Connection.Open();
        string strSQL = "update student set s_check='是' where  s_sno='" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "'";
        string sql = "delete from Documents where  s_sno='" + this.GridView1.SelectedDataKey["s_sno"].ToString() + "'";
        SqlCommand cmd2 = new SqlCommand(strSQL, Connection);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd3 = new SqlCommand(sql, Connection);
        cmd3.ExecuteNonQuery();
        Connection.Close();
        Response.Redirect(Request.Url.ToString());

    }
}