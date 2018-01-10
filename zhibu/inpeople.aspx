<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inpeople.aspx.cs" Inherits="zhibu_inpeople" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        迁入党员：<br />
        <br />
        *学号（职工号）：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; *培养人：&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        *迁入支部：&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; *入党日期：&nbsp; 
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        *原单位：&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; *审批人：&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" Width="115px" />
        <br />
        <br />
        迁入记录：<br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="in_sno" HeaderText="学号（职工号）" SortExpression="in_sno" />
                <asp:BoundField DataField="in_ounit" HeaderText="原单位" SortExpression="in_ounit" />
                <asp:BoundField DataField="in_profession" HeaderText="迁入支部" SortExpression="in_profession" />
                <asp:BoundField DataField="in_date" HeaderText="审批日期" SortExpression="in_date" />
                <asp:BoundField DataField="in_people" HeaderText="审批人" SortExpression="in_people" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT * FROM [inpeople]"></asp:SqlDataSource>
    </form>
</body>
</html>
