using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;                  //这两行是连接数据库的头文件
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string outhtml()
    {
        String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;            
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        string html = "<ul  style=\"right:0;position:absolute;font-size:14px;\">";  
        string strsql = "select * from L_Classs where  CpareID = 0";  //
        SqlCommand cmd = new SqlCommand(strsql, con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())                         //判断一级目录是不是空的
        {
            SqlConnection contmp = new SqlConnection(strConn);           
            contmp.Open();
            html = html + "<li  onmouseover=\"displaySubMenu(this)\" onmouseout=\"hideSubMenu(this)\"> <a  href=\"Default.aspx\">";
            string name = reader.GetString(1);
            html = html + name + "</a><ul>";                    //一级目录赋值
            String sql = "select * from L_Classs where CpareID=" + reader.GetInt32(0);
            SqlCommand cmdtemp = new SqlCommand(sql, contmp);
            SqlDataReader readertemp = cmdtemp.ExecuteReader();
            while (readertemp.Read())
            {
                html = html + "<li><a  href=\"ShowMenu.aspx?Class=" + readertemp.GetString(1) + "\">" + readertemp.GetString(1) + "</a></li>";    //二级目录赋值
            }
            html = html + "</ul>";
            contmp.Close();
        }
        html = html + "</ul>";
        con.Close();
        return html;
    }
    
}
