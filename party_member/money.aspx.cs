using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class party_member_money : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();

        SqlConnection Connection = new SqlConnection(strConnection);
        String strSQL = "Select * From money2 where m2_moneytime=" + TextBox1.Text;
        SqlCommand command = new SqlCommand(strSQL, Connection);
        SqlDataReader Dr;
        Connection.Open();

        Dr = command.ExecuteReader();
        while (Dr.Read())
        {
            if (TextBox1.Text == Dr["m2_moneytime"].ToString())
            {
                flag = 1;
                Label2.Text = Dr["m2_condition"].ToString();
            }
        }
        // 未有期数的情况
        if (flag == 0)
        {
            Response.Write("<script language='javascript'>alert('还未到该期的党费缴纳时间, 请您输入正确的期数!');</script>");
        }
        Dr.Close();
    }
}