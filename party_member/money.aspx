<%@ Page Language="C#" AutoEventWireup="true" CodeFile="money.aspx.cs" Inherits="party_member_money" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 253px">
    
        <asp:Label ID="Label1" runat="server" Text="我的党费缴纳情况:"></asp:Label>
        <br />
        <br />
        请选择期数:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="126px"></asp:TextBox>
        <br />
        <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
        <br />
&nbsp;<br />
        <br />
        是否缴纳:&nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
    </form>
</body>
</html>
