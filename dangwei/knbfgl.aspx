<%@ Page Language="C#" AutoEventWireup="true" CodeFile="knbfgl.aspx.cs" Inherits="knbfgl"  EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1185px">
    
        名声活动信息：<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="87px" Width="675px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="l_id,l_fname,l_add1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="l_id" HeaderText="活动编号" ReadOnly="True" SortExpression="l_id" />
                <asp:BoundField DataField="l_title" HeaderText="活动主题" SortExpression="l_title" />
                <asp:BoundField DataField="l_time" HeaderText="发布时间" SortExpression="l_time" />
                <asp:BoundField DataField="l_date" HeaderText="报名结束时间" SortExpression="l_over" />
                <asp:BoundField DataField="l_type" HeaderText="类型" SortExpression="l_type" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:28dayConnectionString %>" DeleteCommand="DELETE FROM [live] WHERE [l_id] = @l_id" InsertCommand="INSERT INTO [live] ([l_id], [l_title], [l_time], [l_type], [l_over], [l_add], [l_fname]) VALUES (@l_id, @l_title, @l_time, @l_type, @l_over, @l_add, @l_fname)" SelectCommand="SELECT * FROM [live]" UpdateCommand="UPDATE [live] SET [l_title] = @l_title, [l_time] = @l_time, [l_type] = @l_type, [l_over] = @l_over, [l_add] = @l_add, [l_fname] = @l_fname WHERE [l_id] = @l_id">
            <DeleteParameters>
                <asp:Parameter Name="l_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="l_id" Type="String" />
                <asp:Parameter Name="l_title" Type="String" />
                <asp:Parameter DbType="Date" Name="l_time" />
                <asp:Parameter Name="l_type" Type="String" />
                <asp:Parameter DbType="Date" Name="l_over" />
                <asp:Parameter Name="l_add" Type="String" />
                <asp:Parameter Name="l_fname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="l_title" Type="String" />
                <asp:Parameter DbType="Date" Name="l_time" />
                <asp:Parameter Name="l_type" Type="String" />
                <asp:Parameter DbType="Date" Name="l_over" />
                <asp:Parameter Name="l_add" Type="String" />
                <asp:Parameter Name="l_fname" Type="String" />
                <asp:Parameter Name="l_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        点击某行查看详细内容以及报名名单<br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="218px" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" TextMode="MultiLine" Width="710px"></asp:TextBox>
        <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
        <script>CKEDITOR.replace('TextBox1', { toolbarCanCollapse: true, toolbarStartupExpanded: false, toolbar: [], height: '320px', width: '552px' });</script>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" Width="475px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="lh_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="lh_id" HeaderText="活动编号" ReadOnly="True" SortExpression="lh_id" />
                <asp:BoundField DataField="lh_sno" HeaderText="学号（教职工号）" SortExpression="lh_sno" />
                <asp:BoundField DataField="lh_name" HeaderText="姓名" SortExpression="lh_name" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:28dayConnectionString %>" SelectCommand="SELECT * FROM [livelihood]">
        </asp:SqlDataSource>
        <br />

        </div>
    </form>
</body>
</html>
