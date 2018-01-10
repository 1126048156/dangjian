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

public partial class updjdt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
            SqlConnection conn = new SqlConnection(strConnection);
            conn.Open();
            String strSQL = "Select an_fname From djwork where an_id='" + TextBox1.Text + "'";
            SqlCommand command = new SqlCommand(strSQL, conn);
            object obj = command.ExecuteScalar();
            if (obj != null)
            {

                string content;
                content = Doc2Text(Server.MapPath("image1/" + obj.ToString()));
                TextBox3.Text = content;
            }
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
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        ApplicationClass wordApp = new ApplicationClass();
        object missing = System.Reflection.Missing.Value;
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(strConnection);
        conn.Open();
        String strSQL = "Select an_fname From djwork where an_id='" + TextBox1.Text + "'";
        SqlCommand command = new SqlCommand(strSQL, conn);
        object obj = command.ExecuteScalar();
        if (obj != null)
        {


            String strSQL3 = "Delete From djwork where an_id='" + TextBox1.Text + "'";
            SqlCommand command3 = new SqlCommand(strSQL3, conn);
            command3.ExecuteNonQuery();

        }
        conn.Close();
        //ApplicationClass wordApp = new ApplicationClass();
        //object missing = System.Reflection.Missing.Value;
        string filename = TextBox2.Text + ".doc";
        string destDir = Server.MapPath("./image1");
        object destPath = Path.Combine(destDir, filename);
        //DateTime UploadDate = DateTime.Now;
        //object docName = @"E:\英雄时刻Chapter1\WebSite15\upload\" + filename; // 生成的word文件，可以不放在web目录下
        // object docName =Session["sno"]+"的入党申请书"; // 生成的word文件，可以不放在web目录下

        // 生成新文档，这里使用了上面提到的模板，如果不想使用指定的模板，可使用missing，这是会使用默认的模板。关于生成word文件的几个方法，参阅MSDN
        Document MyDoc = wordApp.Documents.Add(ref missing, ref missing, ref missing, ref missing);

        wordApp.Visible = true;
        MyDoc.Activate();
        //wordApp.Selection.Font.Size = 30;           // 字体大小
        // wordApp.Selection.ParagraphFormat.Alignment = WdParagraphAlignment.wdAlignParagraphCenter;  // 居中
        //  wordApp.Selection.Font.Bold = (int)WdConstants.wdToggle;    // 黑体
        wordApp.Selection.TypeText(TextBox3.Text);                      // 文字内容，这里我没有从数据库里面读取，只是测试了一下写入的内容

        // 保存word文档
        MyDoc.SaveAs(ref destPath, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing);

        // 关闭，释放
        MyDoc.Close(ref missing, ref missing, ref missing);
        wordApp.Quit(ref missing, ref missing, ref missing);
        MyDoc = null;
        wordApp = null;
        Label1.Text = "提交成功!";
        Label1.Visible = true;

        string strConnection2 = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection conn2 = new SqlConnection(strConnection2);
        conn2.Open();
        string sql2 = "insert into djwork (an_id,an_title,an_people,an_date,an_type,an_add1,an_fname) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + DropDownList2.Text + "','" + destPath + "','" + filename + "')";
        SqlCommand cmd2 = new SqlCommand(sql2, conn2);
        cmd2.ExecuteNonQuery();
        conn2.Close();

        ///'遍历File表单元素
        HttpFileCollection files = HttpContext.Current.Request.Files;
        /// '状态信息
        System.Text.StringBuilder strMsg = new System.Text.StringBuilder("您输入的用户名是：" + TextBox1.Text + "<br/>");
        strMsg.Append("上传的文件分别是：<hr color='red'/>");
        try
        {
            for (int iFile = 0; iFile < files.Count; iFile++)
            {
                ///'检查文件扩展名字
                HttpPostedFile postedFile = files[iFile];
                string fileName, fileExtension;
                fileName = System.IO.Path.GetFileName(postedFile.FileName);
                if (fileName != "")
                {
                    fileExtension = System.IO.Path.GetExtension(fileName);
                    strMsg.Append("上传的文件类型：" + postedFile.ContentType.ToString() + "<br>");
                    strMsg.Append("客户端文件地址：" + postedFile.FileName + "<br>");
                    strMsg.Append("上传文件的文件名：" + fileName + "<br>");
                    strMsg.Append("上传文件的扩展名：" + fileExtension + "<br><hr>");
                    ///'可根据扩展名字的不同保存到不同的文件夹
                    ///注意：可能要修改你的文件夹的匿名写入权限。
                    string savePath = Server.MapPath("./image1/" + TextBox1.Text + "");
                    Directory.CreateDirectory(savePath);
                    postedFile.SaveAs(System.Web.HttpContext.Current.Request.MapPath("image1/" + TextBox1.Text + "/") + fileName);

                }
            }
            strStatus.Text = strMsg.ToString();
        }
        catch (System.Exception Ex)
        {
            strStatus.Text = Ex.Message;
        }
    }
}