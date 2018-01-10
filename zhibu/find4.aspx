<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find4.aspx.cs" Inherits="zhibu_find4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        查询毕业党员去向：<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="out_sno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="s_name" HeaderText="姓名" SortExpression="s_name" />
                <asp:BoundField DataField="out_sno" HeaderText="学号" ReadOnly="True" SortExpression="out_sno" />
                <asp:BoundField DataField="out_iunit" HeaderText="毕业去向" SortExpression="out_iunit" />
                <asp:BoundField DataField="out_profession" HeaderText="原所属支部" SortExpression="out_profession" />
                <asp:BoundField DataField="out_date1" HeaderText="迁出日期" SortExpression="out_date1" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT [student].s_name,[outpeople].* FROM [student]INNER JOIN [outpeople]  ON [student].s_sno=[outpeople].out_sno and [outpeople].out_graduation = '是'"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
