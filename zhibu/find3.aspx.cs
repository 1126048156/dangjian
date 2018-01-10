using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using Microsoft.Office.Interop.Word;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.IO;
public partial class zhibu_find3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
   
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        PostBackOptions myPostBackOptions = new PostBackOptions(this);
        myPostBackOptions.AutoPostBack = false;
        myPostBackOptions.RequiresJavaScriptProtocol = true;
        myPostBackOptions.PerformValidation = false;
        String evt = Page.ClientScript.GetPostBackClientHyperlink(sender as GridView, "Select$" + e.Row.RowIndex.ToString());
        e.Row.Attributes.Add("onclick", evt);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        Connection.Open();
        String strSQL = "Select * From student where s_sno='" + this.GridView1.SelectedDataKey["c_sno"].ToString() + "'";
        String strSQL1 = "Select * From communist where c_sno='" + this.GridView1.SelectedDataKey["c_sno"].ToString() + "'";
        SqlCommand command = new SqlCommand(strSQL, Connection);
        SqlCommand command1 = new SqlCommand(strSQL1, Connection);
        SqlDataReader Dr;
        SqlDataReader Dr1;
        Dr = command.ExecuteReader();

        while (Dr.Read())
        {
            TextBox3.Text = Dr["s_name"].ToString();
            TextBox4.Text = Dr["s_sno"].ToString();
            TextBox5.Text = Dr["s_sex"].ToString();
            TextBox6.Text = Dr["s_birthplace"].ToString();
            TextBox7.Text = Dr["s_ethnic"].ToString();
            TextBox8.Text = Dr["s_birthplace"].ToString();
            TextBox9.Text = Dr["s_idcard"].ToString();
            TextBox10.Text = Dr["s_academy"].ToString();
            TextBox11.Text = Dr["s_phone"].ToString();
            TextBox12.Text = Dr["s_email"].ToString();
            //Image1.ImageUrl = ResolveUrl(Dr["out_add1"].ToString());
        }
        Dr.Close();
        Dr1 = command1.ExecuteReader();
        while (Dr1.Read())
        {
            TextBox13.Text = Dr1["c_contactor"].ToString();
            TextBox14.Text = Dr1["c_partytime"].ToString();
            TextBox15.Text = Dr1["c_note"].ToString(); 
        }
        Dr1.Close();
        Connection.Close();

        /*string content;
        content = Doc2Text(Server.MapPath("image3/" + this.GridView1.SelectedDataKey["out_fname"].ToString()));
        Image1 = content;*/
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strConnection = WebConfigurationManager.ConnectionStrings["28dayConnectionString"].ConnectionString.ToString();
        SqlConnection Connection = new SqlConnection(strConnection);
        Connection.Open();
        String strSQL = "update student set s_sno='" + TextBox4.Text + "',s_name='" + TextBox3.Text + "',s_sex='" + TextBox5.Text + "',s_birthplace='" + TextBox6.Text + "',s_ethnic='" + TextBox7.Text + "',s_birthplace='" + TextBox8.Text + "',s_idcard='" + TextBox9.Text + "',s_academy='" + TextBox10.Text + "',s_phone='" + TextBox11.Text + "',s_email='" + TextBox12.Text + "' where s_sno='" + this.GridView1.SelectedDataKey["c_sno"].ToString() + "'";
        String strSQL1 = "update communist set c_contactor='" + TextBox13.Text + "',c_partytime='" + TextBox14.Text + "',c_note='" + TextBox15.Text + "' where c_sno='" + this.GridView1.SelectedDataKey["c_sno"].ToString() + "'";
       
        Connection.Close();
        Response.Write("<script>alert('修改成功！')</script>");
    }
}