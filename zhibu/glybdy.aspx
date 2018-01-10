<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glybdy.aspx.cs" Inherits="zhibu_glybdy" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        管理预备党员：<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="d_sno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="s_name" HeaderText="姓名" SortExpression="s_name" />
                <asp:BoundField DataField="d_sno" HeaderText="学号" ReadOnly="True" SortExpression="d_sno" />
                <asp:BoundField DataField="d_cdate" HeaderText="开始时间" SortExpression="d_cdate" />
                <asp:BoundField DataField="d_days" HeaderText="预备期时长（天）" SortExpression="d_days" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT [student].s_name,[development].* FROM [student]INNER JOIN [development]  ON [student].s_sno=[development].d_sno "></asp:SqlDataSource>
        单击某行选中<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="成为党员" />
        <br />
    
    </div>
    </form>
</body>
</html>
