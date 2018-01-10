<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tzgggl.aspx.cs" Inherits="tzgggl" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>

        通知公告信息：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="an_add1,an_fname,an_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="485px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="an_title" HeaderText="标题" SortExpression="an_title" />
                <asp:BoundField DataField="an_id" HeaderText="编号" ReadOnly="True" SortExpression="an_id" />
                <asp:BoundField DataField="an_type" HeaderText="类型" SortExpression="an_type" />
                <asp:BoundField DataField="an_people" HeaderText="发布人" SortExpression="an_people" />
                <asp:BoundField DataField="an_date" HeaderText="发布时间" SortExpression="an_date" />
                <asp:CommandField ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" />
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

        <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:28dayConnectionString %>" SelectCommand="SELECT * FROM [announce]" DeleteCommand="DELETE FROM [announce] WHERE [an_id] = @an_id" InsertCommand="INSERT INTO [announce] ([an_id], [an_title], [an_people], [an_date], [an_type], [an_add1], [an_fname]) VALUES (@an_id, @an_title, @an_people, @an_date, @an_type, @an_add1, @an_fname)" UpdateCommand="UPDATE [announce] SET [an_title] = @an_title, [an_people] = @an_people, [an_date] = @an_date, [an_type] = @an_type, [an_add1] = @an_add1, [an_fname] = @an_fname WHERE [an_id] = @an_id">
            <DeleteParameters>
                <asp:Parameter Name="an_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="an_id" Type="String" />
                <asp:Parameter Name="an_title" Type="String" />
                <asp:Parameter Name="an_people" Type="String" />
                <asp:Parameter DbType="Date" Name="an_date" />
                <asp:Parameter Name="an_type" Type="String" />
                <asp:Parameter Name="an_add1" Type="String" />
                <asp:Parameter Name="an_fname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="an_title" Type="String" />
                <asp:Parameter Name="an_people" Type="String" />
                <asp:Parameter DbType="Date" Name="an_date" />
                <asp:Parameter Name="an_type" Type="String" />
                <asp:Parameter Name="an_add1" Type="String" />
                <asp:Parameter Name="an_fname" Type="String" />
                <asp:Parameter Name="an_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        点击某行查看详细内容<br />
        <asp:TextBox ID="TextBox1" runat="server" Height="220px" ReadOnly="True" Width="945px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine"></asp:TextBox>
&nbsp;<br /> 
        <script type="text/javascript">CKEDITOR.replace('TextBox1', { toolbarCanCollapse: true, toolbarStartupExpanded: false, toolbar: [], height: '320px', width: '552px' });
</script>
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
