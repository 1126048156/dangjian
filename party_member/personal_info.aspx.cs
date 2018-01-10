using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class party_member_personal_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
            SqlConnection Connection = new SqlConnection(strConnection);
            Connection.Open();
            String strSQL = "Select * From student, communist where s_sno='" + Session["s_sno"] + "' and student.s_sno = communist.c_sno";
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
                Label23.Text = Dr["s_grade"].ToString();
                TextBox1.Text = Dr["s_phone"].ToString();
                TextBox2.Text = Dr["s_email"].ToString();
                TextBox3.Text = Dr["s_address"].ToString();
          

                Label_people2.Text = Dr["c_contactor"].ToString();
                Label_profession2.Text = Dr["c_profession"].ToString();
                Label_note2.Text = Dr["c_note"].ToString();
            }
            Dr.Close();
            Connection.Close();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        Connection.Open();
        string strSQL = "update student set s_phone=@s_phone,s_email=@s_email,s_address=@s_address where s_sno='" + Session["s_sno"] + "'";
        SqlCommand command = new SqlCommand(strSQL, Connection);

        command.Parameters.AddWithValue("@s_phone", TextBox1.Text);
        command.Parameters.AddWithValue("@s_email", TextBox2.Text);
        command.Parameters.AddWithValue("@s_address", TextBox3.Text);
        command.ExecuteNonQuery();
        Connection.Close();
        Response.Write("<script language='javascript'>alert('修改成功!');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal_center.aspx");
    }
   
}