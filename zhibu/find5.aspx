<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find5.aspx.cs" Inherits="zhibu_find5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        查看入党人员名单：<br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="s_sno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="s_sno" HeaderText="学号" ReadOnly="True" SortExpression="s_sno" />
                <asp:BoundField DataField="s_name" HeaderText="姓名" SortExpression="s_name" />
                <asp:BoundField DataField="s_sex" HeaderText="性别" SortExpression="s_sex" />
                <asp:BoundField DataField="s_identity" HeaderText="所处阶段" SortExpression="s_identity" />
                <asp:BoundField DataField="s_academy" HeaderText="学院" SortExpression="s_academy" />
                <asp:BoundField DataField="s_phone" HeaderText="电话" SortExpression="s_phone" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT * FROM [student] WHERE ([s_identity] &lt;&gt; @s_identity)">
            <SelectParameters>
                <asp:Parameter DefaultValue="非党员" Name="s_identity" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
