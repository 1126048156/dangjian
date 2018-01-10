using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class index_ShowMenu : System.Web.UI.Page
{
    int CID;
    int CPareID;
    string ClassName;
    string CPareName;
    static int Count;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConn);
            con.Open();
            if (Request.QueryString["Class"] != null)
            {
                ClassName = Request.QueryString["Class"].ToString();
                title1.InnerText = ClassName;
                Label2.Text = ClassName;

                String sql = " select CID from L_Classs where CNmae='" + ClassName + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                if (cmd.ExecuteScalar() != null)
                {
                    CID = (int)cmd.ExecuteScalar();
                    //String sql1 = " select * from L_Newss where ClassId='" + CID + "'";
                    //SqlDataAdapter cmd1 = new SqlDataAdapter(sql1, con);
                    //DataSet ds = new DataSet();
                    //cmd1.Fill(ds, "L_Newss");

                    //Repeater1.DataSource = ds;
                    //Repeater1.DataBind();
                }

                string sqlparent = "select CNmae from L_Classs where CID=( select CpareID from L_Classs where CNmae='" + ClassName + "')";
                cmd = new SqlCommand(sqlparent, con);
                CPareName = (string)cmd.ExecuteScalar();
                Label1.Text = CPareName;
                Label3.Text = CPareName;
                //设置同级目录列表
                string sqlCpareId = " select CpareID from L_Classs where CNmae='" + ClassName + "'";
                cmd = new SqlCommand(sqlCpareId, con);
                CPareID = (int)cmd.ExecuteScalar();
                sql = "select * from L_Classs where CpareID='" + CPareID + "'";
                SqlDataAdapter sda = new SqlDataAdapter(sql, con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "L_Newss");
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            }
            con.Close();
            listPage();
        }


    }
    private void listPage()
    {
        if (Request.QueryString["Class"] != null)
        {
            ClassName = Request.QueryString["Class"].ToString();
            String strConn = ConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConn);
            con.Open();

            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(" select * from L_Newss where ClassId='" + CID + "' order by Time DESC", con);
            sda.Fill(ds, "L_Newss");
            //查询总记录
            //  int countNews;
            String sqlCount = "select count(*) from L_Newss where ClassId='" + CID + "'";
            int countNews = (int)new SqlCommand(sqlCount, con).ExecuteScalar();
            countRecord.Text = countNews + "";
            //分页数据源
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = ds.Tables["L_Newss"].DefaultView;
            pds.AllowPaging = true;//允许分页
            pds.PageSize = 12;//单页显示项数
            int CurPage;
            if (Request.QueryString["Page"] != null)
                CurPage = Convert.ToInt32(Request.QueryString["Page"]);
            else
                CurPage = 1;
            pds.CurrentPageIndex = CurPage - 1;
            //总页数
             Count = pds.PageCount;
            CurrentPage.Text = "&nbsp" + CurPage.ToString();
            labPage.Text = Count.ToString();
            if (!pds.IsFirstPage)
            {
                this.first.NavigateUrl = Request.CurrentExecutionFilePath + "?Class=" + ClassName + "&Page=1";
                //  this.last.NavigateUrl = Request.CurrentExecutionFilePath + "?Class=" + ClassName + "&Page=" + Convert.ToString(Count - 1); ;
                up.NavigateUrl = Request.CurrentExecutionFilePath + "?Class=" + ClassName + "&Page=" + Convert.ToString(CurPage - 1);
                td1.BgColor = "#c9c9c9";
                td2.BgColor = "#c9c9c9";
            }
            else
            {
                //  this.first.Visible = false;
            }
            if (!pds.IsLastPage)
            {
                td3.BgColor = "#c9c9c9";
                td4.BgColor = "#c9c9c9";
                next.NavigateUrl = Request.CurrentExecutionFilePath + "?Class=" + ClassName + "&Page=" + Convert.ToString(CurPage + 1);
                last.NavigateUrl = Request.CurrentExecutionFilePath + "?Class=" + ClassName + "&Page=" + Convert.ToString(Count);
            }
            else
            {
                //  this.first.Visible = false;
                //  this.last.Visible = false;
            }
            Repeater2.DataSource = pds;
            Repeater2.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string pageNum;
        if (Request.QueryString["Class"] != null)
        {
            ClassName = Request.QueryString["Class"].ToString();
            if (TextBox1.Text != "")
            {
                pageNum = TextBox1.Text;
                if (int.Parse(pageNum) <= Count && int.Parse(pageNum)>0)
                {
                    Response.Redirect(Request.CurrentExecutionFilePath + "?Class=" + ClassName + "&Page=" + pageNum);
                    //  }else
                    //  Response.Write("<script language=javascript>alert('请求的页面不存在！');</script>");

                }
            }

        }

    }
}