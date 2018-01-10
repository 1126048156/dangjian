using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class fbzx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string conn = "server=(local);database=dangjian;user id=sa;password=1234;";
        SqlConnection connection = new SqlConnection(conn);

    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = "server=(local);database=dangjian;user id=sa;pwd=1234";//生成连接数据库字符串
        SqlConnection mycon = new SqlConnection(conn);   //定义SqlConnection对象实例并连接数据库
        mycon.Open();
        //Insert插入语句
        //FileUpload1 的保存
        string filepath1 = FileUpload1.PostedFile.FileName;
        string filename1 = filepath1.Substring(filepath1.LastIndexOf("//") + 1);
        string serverpath1 = Server.MapPath("image1/");
        string a = serverpath1 + filename1;
        FileUpload1.PostedFile.SaveAs(serverpath1 + filename1);

        if (FileUpload2.PostedFile.FileName.Length != 0)
        {
            string filepath2 = FileUpload2.PostedFile.FileName;
            string filename2 = filepath2.Substring(filepath2.LastIndexOf("//") + 1);
            string serverpath2 = Server.MapPath("image2/");
            string b = serverpath2 + filename2;
            FileUpload2.PostedFile.SaveAs(serverpath2 + filename2);
            string myinsert = "insert into announce(an_id,an_title,an_people,an_date,an_type,an_add1,an_add2,,an_fname) values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + DropDownList2.Text + "','" + a + "','" + b + "','" + filename1 + "')";
        }


        string myinsert1 = "insert into announce(an_id,an_title,an_people,an_date,an_type,an_add1,an_fname) values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + DropDownList2.Text + "','" + a + "','" + filename1 + "')";
        SqlCommand mycom = new SqlCommand(myinsert1, mycon);           //定义OleDbCommnad对象并连接数据库
        mycom.ExecuteNonQuery();                           //执行插入语句
        mycon.Close();                //关闭对象并释放所占内存空间    
        mycon.Dispose();
        Response.Write("<script language=javascript>alert('发布成功!');</script>");
    }

    /* protected void Button2_Click1(object sender, EventArgs e)
     {
         string filepath = Server.MapPath("upload") + "\\";
         HttpFileCollection uploadFiles = Request.Files;
         for (int i = 0; i < uploadFiles.Count; i++)
         {
             HttpPostedFile postedFile = uploadFiles[i];
             try
             {
                 if (postedFile.ContentLength > 0)
                 {
                     Label1.Text += "文件 #" + (i + 1) + "：" + System.IO.Path.GetFileName(postedFile.FileName) + "<br/>";
                     postedFile.SaveAs(filepath + System.IO.Path.GetFileName(postedFile.FileName));
                 }
             }
             catch (Exception Ex)
             {
                 Label1.Text += "发生错误： " + Ex.Message;
             }
         }
     }*/
}