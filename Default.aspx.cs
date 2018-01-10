using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page
{
    public int classId;
    public String temp;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConn);
            con.Open();

            con.Close();

            Repeater1DateSource();
            Repeater2DateSource();
            Repeater3DateSource();
            Repeater4DateSource();
        }
    }

    protected void Repeater1DateSource()
    {
        String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        String sql = "select top 12 * from L_Newss where ClassId=(select CID from L_Classs where CNmae='党建新闻')  order by Time DESC";
        SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "L_Newss");
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Repeater2DateSource()
    {
        String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        String sql = "select top 12 * from L_Newss where ClassId=(select CID from L_Classs where CNmae='通知公告') order by Time DESC ";
        SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "L_Newss");
        Repeater2.DataSource = ds;
        Repeater2.DataBind();
        con.Close();
    }

    protected void Repeater3DateSource()
    {
        String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        String sql = "select top 12 * from L_Newss where ClassId=(select CID from L_Classs where CNmae='学术动态') order by Time DESC";
        SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "L_Newss");
        //Repeater3.DataSource = ds;
        //Repeater3.DataBind();
        con.Close();
    }

    protected void Repeater4DateSource()
    {
        String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        String sql = "select top 12 * from L_Newss where ClassId=(select CID from L_Classs where CNmae='学工园地' ) order by Time DESC";
        SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "L_Newss");
        //Repeater4.DataSource = ds;
        //Repeater4.DataBind();
        con.Close();
    }
}
