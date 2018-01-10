using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class find_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Label3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool flag=true;
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        String strSQL = "Select * From student where s_sno='" + TextBox1.Text + "'";
        SqlCommand command = new SqlCommand(strSQL, Connection);
        SqlDataReader Dr;
        Connection.Open();
        Dr = command.ExecuteReader();
        while (Dr.Read())
        {
            if (TextBox2.Text == Dr["s_email"].ToString())
            {
                Session["s_sno"] = TextBox1.Text;
                if (Send())
                {
                    Response.Redirect("~/find_pass_prompt.aspx");
                    flag = false;
                }
            }       
        }
        Dr.Close();
        if(flag)
        {
            
                Label3.Text = "账号与邮箱不匹配!";
                Label3.Visible = true;
         
        }
    }
    protected void PasswordRecovery_SendingMail()
    {
        
    }
    public bool Send()
    {
        bool IsSent;
        SmtpClient client = new SmtpClient("smtp.163.com", 25);
        client.UseDefaultCredentials = false;
        client.Credentials = new System.Net.NetworkCredential("x1596638165@163.com", "xqqx09487");
        client.EnableSsl = false;
        MailAddress from = new MailAddress("x1596638165@163.com", "徐青青");
        MailAddress to = new MailAddress(TextBox2.Text);
        MailMessage message = new MailMessage(from, to);
        message.Subject = "找回密码";

        //Guid g = Guid.NewGuid();
       // DateTime dr =DateTime.Now.AddMinutes(3);
        //String key = Session["no"] + "&" + dr + "&" + g;
        //message.Body = string.Format(System.IO.File.ReadAllText(Server.MapPath("重置密码.aspx")), TextBox1.Text, TextBox2.Text, System.Web.Configuration.WebConfigurationManager.AppSettings["TimeStamp"], DateTime.Now);
       // message.IsBodyHtml = true;
        //DateTime.Today.ToShortDateString()

        // 设置Session的过期时间, 以分钟为单位, 放在服务器上就没有端口号了
        Session.Timeout = 5;
        message.Body = "亲爱的用户:" + TextBox1.Text + " 您好!重新设置密码请访问以下链接:'http://localhost:51097/reset_pass.aspx' 请您务必在5分钟内激活该帐号，否则该激活链接将失效。";
        message.IsBodyHtml = true;//是否以HTML格式发送          
        try
        {
            client.Send(message);//发送
            IsSent = true;
        }
        catch
        {
            IsSent = false;
        }
        return IsSent;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user_login.aspx");
    }

}