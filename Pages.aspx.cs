using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages : System.Web.UI.Page
{
    int ClassId;
    int NId;
    int Click;
    String Title;
    String Content;
    String Time;
    String firstClass;
    String secondClass;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if(Request.QueryString["ClassId"]!=null&&Request.QueryString["NId"]!=null)
            {
                String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConn);
            con.Open();
            ClassId=Convert.ToInt32( Request.QueryString["ClassId"].ToString());
            NId = Convert.ToInt32(Request.QueryString["NId"].ToString());
  //          Response.Write(ClassId);
  //          Response.Write(NId);
            String sql = "update L_Newss set Click=Click+1 where NID=" + NId;
            new SqlCommand(sql, con).ExecuteNonQuery();


            sql = "select * from L_Newss where NID=" + NId;
            SqlCommand cmd=new SqlCommand(sql,con);
            SqlDataReader reader = cmd.ExecuteReader();
            //新闻显示
            if(reader.Read())
            {
                Title = reader.GetString(2);
                Content = reader.GetString(8);
                Time = reader.GetDateTime(11).ToString();
                Click = reader.GetInt32(9);// 点击量
            }
                

            //网页标题赋值
            title1.InnerText = Title;
            reader.Close();
            //当前位置定位
            string sqlFirst = "select CNmae from L_Classs where CID=(select CpareID from L_Classs where CID='"+ClassId+"')";
            firstClass =(string) new SqlCommand(sqlFirst, con).ExecuteScalar();
            string sqlSecond = "select CNmae from L_Classs where CID='"+ClassId+"'";
            secondClass = (string)new SqlCommand(sqlSecond, con).ExecuteScalar();
            Label1.Text = firstClass;
            a1.HRef = "ShowMenu.aspx?Class="+secondClass;
            a2.HRef = "ShowMenu.aspx?Class=" + secondClass;
            Label2.Text = secondClass;
            Label6.Text = secondClass;
            //同类新闻列表
            String sqlTitle = "select top 12 * from L_Newss where ClassId='"+ClassId+"' order by NID Desc";
            SqlDataAdapter sda = new SqlDataAdapter(sqlTitle, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "L_Newss");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            //显示新闻
            Label3.Text = Title;
            Label4.Text = Time + "&nbsp&nbsp&nbsp 点击量：" + Click;
            Label5.Text = Content;
            con.Close();

            }
            
        }
    }
}