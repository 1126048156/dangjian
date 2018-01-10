<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_info.aspx.cs" Inherits="personal_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 1246px;
            height: 111px;
        }
        td{border:solid #808080; border-width:0px 1px 1px 0px; padding:10px 0px;text-align:center;  }
table{border:solid #808080; border-width:1px 0px 0px 1px;}
         </style>
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
       <strong class="id">
        <br />
&nbsp;&nbsp; 基本信息</strong>&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp; <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="姓名：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="学号：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="院系：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="性别：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="身份证号：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="班级：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="身份：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="民族：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="出生地：" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                   
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label23" runat="server" Font-Size="Medium" Text="年级："></asp:Label>
                   
                </td>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                  
            </tr>
        </table>
    
    </div>
    <div>
        <strong id="id">&nbsp; 
        <br />
&nbsp;&nbsp; 其他<br />
        </strong>&nbsp;<asp:Label ID="Label24" runat="server" Font-Size="Medium" Text="手机："></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="手机号不能为空"></asp:RequiredFieldValidator>
          
                &nbsp;
          
                <asp:Label ID="Label20" runat="server" Text="电子邮箱：" Font-Size="Medium"></asp:Label>
           
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="电子邮箱不能为空"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email格式错误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           
                &nbsp;&nbsp;
           
                <asp:Label ID="Label21" runat="server" Text="家庭住址：" Font-Size="Medium"></asp:Label>
           
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Font-Size="Medium"></asp:TextBox>
          
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认 " Font-Size="Medium" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Font-Size="Medium" />
            </p>
    </form>
   
    
    </body>
</html>
