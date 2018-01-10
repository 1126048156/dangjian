<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reply1.aspx.cs" Inherits="reply1" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        回复入党申请：<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Name_file,s_sno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="s_sno" HeaderText="学号（职工号）" SortExpression="s_sno" />
                <asp:BoundField DataField="Name_file" HeaderText="文件名" ReadOnly="True" SortExpression="Name_file" />
                <asp:BoundField DataField="UploadDate" HeaderText="上传时间" SortExpression="UploadDate" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" DeleteCommand="DELETE FROM [Documents] WHERE [Name_file] = @Name_file" InsertCommand="INSERT INTO [Documents] ([Name_file], [s_sno], [destDir], [UploadDate]) VALUES (@Name_file, @s_sno, @destDir, @UploadDate)" SelectCommand="SELECT * FROM [Documents]" UpdateCommand="UPDATE [Documents] SET [s_sno] = @s_sno, [destDir] = @destDir, [UploadDate] = @UploadDate WHERE [Name_file] = @Name_file">
            <DeleteParameters>
                <asp:Parameter Name="Name_file" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name_file" Type="String" />
                <asp:Parameter Name="s_sno" Type="String" />
                <asp:Parameter Name="destDir" Type="String" />
                <asp:Parameter Name="UploadDate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="s_sno" Type="String" />
                <asp:Parameter Name="destDir" Type="String" />
                <asp:Parameter Name="UploadDate" Type="String" />
                <asp:Parameter Name="Name_file" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        点击某行查看入党申请书内容：<br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="220px" ReadOnly="True" Width="945px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine"></asp:TextBox>
        <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
        <script>CKEDITOR.replace('TextBox1', { toolbarCanCollapse: true, toolbarStartupExpanded: false, toolbar: [], height: '320px', width: '552px' });</script>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="通过" Width="95px" />
    
    </div>
    </form>
</body>
</html>
