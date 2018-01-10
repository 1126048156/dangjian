using System.Web.Configuration;
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
using System.Xml.Linq;
using Microsoft.Office.Interop.Word;
public partial class zhibu_outpeople : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        PostBackOptions myPostBackOptions = new PostBackOptions(this);
        myPostBackOptions.AutoPostBack = false;
        myPostBackOptions.RequiresJavaScriptProtocol = true;
        myPostBackOptions.PerformValidation = false;
        String evt = Page.ClientScript.GetPostBackClientHyperlink(sender as GridView, "Select$" + e.Row.RowIndex.ToString());
        e.Row.Attributes.Add("onclick", evt);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        Connection.Open();
        String strSQL = "Select * From outpeople where out_sno='" + this.GridView1.SelectedDataKey["out_sno"].ToString() + "'";
        String strSQL1 = "Select * From student where s_sno='" + this.GridView1.SelectedDataKey["out_sno"].ToString() + "'";
        SqlCommand command = new SqlCommand(strSQL, Connection);
        SqlCommand command1 = new SqlCommand(strSQL1, Connection);
        SqlDataReader Dr;
        SqlDataReader Dr1;
        Dr = command.ExecuteReader();
       
        while (Dr.Read())
        {
            Label1.Text = Dr["out_sno"].ToString();
            Label2.Text = Dr["out_iunit"].ToString();
            Label3.Text = Dr["out_profession"].ToString();
            Label4.Text = Dr["out_date"].ToString();
            Label5.Text = Dr["out_graduation"].ToString();
            Image1.ImageUrl = ResolveUrl(Dr["out_add1"].ToString());
       }
        Dr.Close();
        Dr1 = command1.ExecuteReader();
        while (Dr1.Read())
        { Label6.Text = Dr1["s_name"].ToString(); }
        Dr1.Close();
        Connection.Close();
        
        /*string content;
        content = Doc2Text(Server.MapPath("image3/" + this.GridView1.SelectedDataKey["out_fname"].ToString()));
        Image1 = content;*/
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
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection2 = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn2 = new SqlConnection(strConnection2);
        conn2.Open();
        string sql2 = "update outpeople set out_date1='" + DateTime.Now.ToString("yyyy-MM-dd") + "',out_people='" + TextBox1.Text + "',out_check='是' where out_sno= '" + Label1.Text + "'";
        SqlCommand cmd2 = new SqlCommand(sql2, conn2);
        cmd2.ExecuteNonQuery();
        string sql4 = "delete from money2 where m2_sno= '" + Label1.Text + "'";
        SqlCommand cmd4 = new SqlCommand(sql4, conn2);
        cmd4.ExecuteNonQuery();
      
        string sql3 = "delete from communist where c_sno= '" + Label1.Text + "'";
        SqlCommand cmd3 = new SqlCommand(sql3, conn2);
        cmd3.ExecuteNonQuery();
        conn2.Close();    
        Response.Redirect(Request.Url.ToString());
        Response.Write("<script>alert('迁出成功！')</script>");
    }
}