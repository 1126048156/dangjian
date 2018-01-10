using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class personal_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            /*Calendar1.Visible = false;*/
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
                    Label10.Text = Dr["s_name"].ToString();
                    Label11.Text = Dr["s_sex"].ToString();
                    Label12.Text = Dr["s_identity"].ToString();
                    Label13.Text = Dr["s_sno"].ToString();
                    Label14.Text = Dr["s_idcard"].ToString();
                    Label15.Text = Dr["s_ethnic"].ToString();
                    Label16.Text = Dr["s_academy"].ToString();
                    Label17.Text = Dr["s_class"].ToString();
                    Label18.Text = Dr["s_birthplace"].ToString();
                    Label22.Text = Dr["s_grade"].ToString();
                    TextBox1.Text = Dr["s_phone"].ToString();
                    TextBox2.Text = Dr["s_email"].ToString();
                    TextBox3.Text = Dr["s_address"].ToString();           
                }
                Dr.Close();
                Connection.Close();
            }

            catch (Exception ex)
            {
                Response.Redirect("~/personal_info.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        Connection.Open();
        string strSQL = "update student set s_phone=@phone,s_email=@email,s_address=@address where s_sno='" + Session["sno"] + "'";
        SqlCommand command = new SqlCommand(strSQL, Connection);
        command.Parameters.AddWithValue("@phone", TextBox1.Text);
        command.Parameters.AddWithValue("@email", TextBox2.Text);
        command.Parameters.AddWithValue("@address", TextBox3.Text);  
        command.ExecuteNonQuery();
        Connection.Close();
        Response.Write("<script language=javascript>alert('修改成功!');</script>");
    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/personal_center.aspx");
    }
}