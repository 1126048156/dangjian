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

public partial class find : System.Web.UI.Page
{
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        /* foreach (WebControl control in this.Controls)
         {
             if (control is TextBox)
             {
                 TextBox txt = control as TextBox;
                 if (!string.IsNullOrEmpty(txt.Text))
                 {
                     //组条件
                 }
             }
         }*/
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string s_url;
        //string id=Server.MapPath("image1/" + this.GridView1.SelectedDataKey["an_fname"].ToString());
        //s_url = "view.aspx?add1=" + id;
        //Response.Redirect(s_url); 
        string content;
        content = Doc2Text(Server.MapPath("image1/" + this.GridView1.SelectedDataKey["an_fname"].ToString()));

        TextBox5.Text = content;
        //Response.Redirect("~/view.aspx");
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}