using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class find_pass_prompt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user_login.aspx");
    }
}