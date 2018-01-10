<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find_password.aspx.cs" Inherits="find_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>找回密码</title>
     <link rel="stylesheet" href="common/css/sccl.css"/>
	<link rel="stylesheet" id="layoutskin" type="text/css" href="common/skin/qingxin/skin.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
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
        <h3>&nbsp;&nbsp;&nbsp;&nbsp; </h3>
        <h3>&nbsp;&nbsp;&nbsp; 根据Email找回密码：</h3>
        
        &nbsp;&nbsp;
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="账号" Font-Size="Medium"></asp:Label>
                    ：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="邮箱" Font-Size="Medium"></asp:Label>
                    ：</td>
                <td>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium"></asp:TextBox>
                </td>
                <td>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="邮箱格式错误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="找回" style="height: 21px" Font-Size="Medium" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" style="height: 21px" Font-Size="Medium"/>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    </form>
</body>
</html>
