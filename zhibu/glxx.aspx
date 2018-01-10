<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glxx.aspx.cs" Inherits="glxx" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        资讯信息：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="s_id,s_fname" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="485px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="s_id" HeaderText="编号" SortExpression="s_id" ReadOnly="True" />
                <asp:BoundField DataField="s_title" HeaderText="标题" SortExpression="s_title" />
                <asp:BoundField DataField="s_type" HeaderText="类型" SortExpression="s_type" />
                <asp:BoundField DataField="s_people" HeaderText="发布人" SortExpression="s_people" />
                <asp:BoundField DataField="s_date" HeaderText="发布时间" SortExpression="s_date" />
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

        <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT * FROM [study]" DeleteCommand="DELETE FROM [study] WHERE [s_id] = @s_id" InsertCommand="INSERT INTO [study] ([s_id], [s_title], [s_date], [s_type], [s_people], [s_add1], [s_fname]) VALUES (@s_id, @s_title, @s_date, @s_type, @s_people, @s_add1, @s_fname)" UpdateCommand="UPDATE [study] SET [s_title] = @s_title, [s_date] = @s_date, [s_type] = @s_type, [s_people] = @s_people, [s_add1] = @s_add1, [s_fname] = @s_fname WHERE [s_id] = @s_id">
            <DeleteParameters>
                <asp:Parameter Name="s_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="s_id" Type="String" />
                <asp:Parameter Name="s_title" Type="String" />
                <asp:Parameter Name="s_date" DbType="Date" />
                <asp:Parameter Name="s_type" Type="String" />
                <asp:Parameter Name="s_people" Type="String" />
                <asp:Parameter Name="s_add1" Type="String" />
                <asp:Parameter Name="s_fname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="s_title" Type="String" />
                <asp:Parameter Name="s_date" DbType="Date" />
                <asp:Parameter Name="s_type" Type="String" />
                <asp:Parameter Name="s_people" Type="String" />
                <asp:Parameter Name="s_add1" Type="String" />
                <asp:Parameter Name="s_fname" Type="String" />
                <asp:Parameter Name="s_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        点击某行查看详细内容<br />
        <asp:TextBox ID="TextBox1" runat="server" Height="220px" ReadOnly="True" Width="945px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine"></asp:TextBox>
&nbsp;
        <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
        <script>CKEDITOR.replace('TextBox1', { toolbarCanCollapse: true, toolbarStartupExpanded: false, toolbar: [], height: '320px', width: '552px' });</script>
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
