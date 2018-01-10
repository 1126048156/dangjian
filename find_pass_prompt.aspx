<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find_pass_prompt.aspx.cs" Inherits="find_pass_prompt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>找回密码提示</title>
  <link rel="stylesheet" href="common/css/sccl.css"/>
	<link rel="stylesheet" id="layoutskin" type="text/css" href="common/skin/qingxin/skin.css" />
</head>
<body>
     <div class="layout-admin">
		<header class="layout-header">
			<span class="header-logo">武汉纺织大学数学与计算机学院</span> 		
            </header>
        </div>
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label3" runat="server" Text="新设密码的链接已经发送到你的注册邮箱，请去注册邮箱点击链接以完成新设密码！ " Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Lime"></asp:Label>
    
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" Font-Size="Medium" ForeColor="Red" />
        </p>
    </form>
</body>
</html>
