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

public partial class apply_party : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        String strSQL = "Select Name_File From Documents where s_sno='" + Session["s_sno"] + "'";
        SqlCommand command = new SqlCommand(strSQL, conn);
        object obj = command.ExecuteScalar();
        if (obj != null)
        {
            TextBox1.ReadOnly = true;
            string content;
            content = Doc2Text(Server.MapPath("upload/" + obj.ToString()));
            TextBox1.Text = content;
        }

    }

    public string Doc2Text(string docFileName)
    {
        //实例化COM         
        ApplicationClass wordApp = new ApplicationClass();
        object fileobj = docFileName;
        object nullobj = System.Reflection.Missing.Value;          //打开指定文件（不同版本的COM参数个数有差异，一般而言除第一个外都用nullobj就行了）          
        Document doc = wordApp.Documents.Open(ref fileobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj);          //取得doc文件中的文本          
        string outText = doc.Content.Text.Replace("\a", "").Replace("\r", "\r\n");//替换空串为空。（word中\a代表空串)、替换回车为回车换行
        //关闭文件
        doc.Close(ref nullobj, ref nullobj, ref nullobj);
        //关闭COM
        wordApp.Quit(ref nullobj, ref nullobj, ref nullobj); //返回
        return outText;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        ApplicationClass wordApp = new ApplicationClass();
        object missing = System.Reflection.Missing.Value;
        string filename = Session["s_sno"] + "的入党申请书" + ".doc";
        string destDir = Server.MapPath("./upload");
        object destPath = Path.Combine(destDir, filename);
        DateTime UploadDate = DateTime.Now;
        //object docName = @"E:\英雄时刻Chapter1\WebSite15\upload\" + filename; // 生成的word文件，可以不放在web目录下
        // object docName =Session["sno"]+"的入党申请书"; // 生成的word文件，可以不放在web目录下

        // 生成新文档，这里使用了上面提到的模板，如果不想使用指定的模板，可使用missing，这是会使用默认的模板。关于生成word文件的几个方法，参阅MSDN
        Document MyDoc = wordApp.Documents.Add(ref missing, ref missing, ref missing, ref missing);

        wordApp.Visible = true;
        MyDoc.Activate();
        //wordApp.Selection.Font.Size = 30;           // 字体大小
        // wordApp.Selection.ParagraphFormat.Alignment = WdParagraphAlignment.wdAlignParagraphCenter;  // 居中
        //  wordApp.Selection.Font.Bold = (int)WdConstants.wdToggle;    // 黑体
        wordApp.Selection.TypeText(TextBox1.Text);                      // 文字内容，这里我没有从数据库里面读取，只是测试了一下写入的内容

        // 保存word文档
        MyDoc.SaveAs(ref destPath, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing);

        // 关闭，释放
        MyDoc.Close(ref missing, ref missing, ref missing);
        wordApp.Quit(ref missing, ref missing, ref missing);
        MyDoc = null;
        wordApp = null;
        Label1.Text = "提交成功!";
        Label1.Visible = true;
        TextBox1.ReadOnly = true;
        string strConnection = WebConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        String strSQL = "Select Name_File From Documents where s_sno='" + Session["s_sno"] + "'";
        SqlCommand command = new SqlCommand(strSQL, conn);
        object obj = command.ExecuteScalar();
        if (obj != null)
        {
            Label1.Text = "提交失败！";
            Label1.Visible = true;
        }
        else
        {
            string strConnection2 = WebConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString();
            SqlConnection conn2 = new SqlConnection(strConnection2);
            conn2.Open();
            string sql2 = "insert into Documents values('" + filename + "','" + Session["s_sno"] + "','" + destPath + "','" + UploadDate + "')";
            SqlCommand cmd2 = new SqlCommand(sql2, conn2);
            cmd2.ExecuteNonQuery();
            conn2.Close();
        }
        conn.Close();
    }
}

