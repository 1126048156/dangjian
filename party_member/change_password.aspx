<%@ Page Language="C#" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="change_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>修改密码</title>
    	<link rel="stylesheet" href="common/css/sccl.css"/>
	<link rel="stylesheet" id="layoutskin" type="text/css" href="common/skin/qingxin/skin.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 90px;
            height: 113px;
            margin-bottom: 23px;
        }
        .auto-style2 {
            width: 194px;
        }
        a:link   {   
        color:blue;   
        text-decoration:   none;   
  }   
  a:visited   {   
        color:red;   
        text-decoration:   none;   
  }   
  a:hover   {   
        color:red;   
        text-decoration:   none;   
  }   
  }   
    </style>  
</head>
<body>
    <div class="layout-admin">
		<header class="layout-header">
			<span class="header-logo">武汉纺织大学数学与计算机学院</span> 		
            </header>
        </div>
    <form id="form1" runat="server">
        <h3>
            &nbsp;</h3>
        <h3>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#66CCFF" BackColor="#FF3300" BorderColor="#FF3300"><a href="personal_center.aspx">返回</a></asp:HyperLink>
        </h3>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 修改密码</h3>
   
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="原密码："></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="原密码不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="新密码："></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="新密码不能为空 "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="确认密码不能为空"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3" ControlToCompare="TextBox2"  ErrorMessage="新密码与确认密码不一致"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认" Width="56px" />
                &nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
   
        
    </form>
</body>
</html>
