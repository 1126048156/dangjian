using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class apply_party_expe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        try
        {
            string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
            SqlConnection Connection = new SqlConnection(strConnection);
            Connection.Open();
            String strSQL = "Select * From student where s_sno='" + Session["s_sno"] + "'";
            SqlCommand command = new SqlCommand(strSQL, Connection);
            SqlDataReader Dr;
            Dr = command.ExecuteReader();
            while (Dr.Read())
            {
                Label2.Text = Dr["s_status"].ToString();
            }
            Dr.Close();
            Connection.Close();
        }

        catch (Exception ex)
        {
            Response.Redirect("~/user_login.aspx");
        }
    }
}