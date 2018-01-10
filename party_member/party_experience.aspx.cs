using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class party_member_party_experience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
            SqlConnection Connection = new SqlConnection(strConnection);
            Connection.Open();
            String strSQL = "Select * From student, communist where s_sno='" + Session["s_sno"] + "' and student.s_sno = communist.c_sno";
            SqlCommand command = new SqlCommand(strSQL, Connection);

            SqlDataReader Dr;
            Dr = command.ExecuteReader();
            while (Dr.Read())
            {
                Label2.Text = Dr["s_status"].ToString();
                // 字符串操作, string的Split函数
                Label4.Text = Dr["c_partytime"].ToString().Split(' ')[0];
            }
            Dr.Close();
            Connection.Close();
        }
    }
}