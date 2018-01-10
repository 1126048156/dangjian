<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glfazt.aspx.cs" Inherits="glfazt" enableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        管理非党员发展状态：<br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="s_sno,s_identity" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="s_sno" HeaderText="学号（职工号）" ReadOnly="True" SortExpression="s_sno" />
                <asp:BoundField DataField="s_name" HeaderText="姓名" SortExpression="s_name" />
                <asp:BoundField DataField="s_academy" HeaderText="学院" SortExpression="s_academy" />
                <asp:BoundField DataField="s_chengji" HeaderText="党课成绩" SortExpression="s_chengji" />
                <asp:BoundField DataField="s_check" HeaderText="入党申请是否通过" SortExpression="s_check" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT * FROM [student] WHERE (([s_chengji] &gt;= @s_chengji) AND ([s_check] = @s_check))">
            <SelectParameters>
                <asp:Parameter DefaultValue="60" Name="s_chengji" Type="Int32" />
                <asp:Parameter DefaultValue="是" Name="s_check" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
        是否确认该同志进入下一阶段：<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-bottom: 0px" Text="通过" Width="92px" />
    
    </div>
    </form>
</body>
</html>
