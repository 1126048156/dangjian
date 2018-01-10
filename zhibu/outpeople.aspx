<%@ Page Language="C#" AutoEventWireup="true" CodeFile="outpeople.aspx.cs" Inherits="zhibu_outpeople" enableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
        迁出党员<br />
        <br />
        待迁出党员名单：（单击某行查看详细信息）<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="out_sno,out_fname" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="out_sno" HeaderText="学号（职工号）" ReadOnly="True" SortExpression="out_sno" />
                <asp:BoundField DataField="out_iunit" HeaderText="迁入单位" SortExpression="out_iunit" />
                <asp:BoundField DataField="out_profession" HeaderText="所属支部" SortExpression="out_profession" />
                <asp:BoundField DataField="out_date" HeaderText="申请日期" SortExpression="out_date" />
                <asp:BoundField DataField="out_graduation" HeaderText="毕业生" SortExpression="out_graduation" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" DeleteCommand="DELETE FROM [outpeople] WHERE [out_sno] = @out_sno" InsertCommand="INSERT INTO [outpeople] ([out_sno], [out_iunit], [out_profession], [out_date], [out_date1], [out_people], [out_check], [out_graduation]) VALUES (@out_sno, @out_iunit, @out_profession, @out_date, @out_date1, @out_people, @out_check, @out_graduation)" SelectCommand="SELECT * FROM [outpeople]" UpdateCommand="UPDATE [outpeople] SET [out_iunit] = @out_iunit, [out_profession] = @out_profession, [out_date] = @out_date, [out_date1] = @out_date1, [out_people] = @out_people, [out_check] = @out_check, [out_graduation] = @out_graduation WHERE [out_sno] = @out_sno">
            <DeleteParameters>
                <asp:Parameter Name="out_sno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="out_sno" Type="String" />
                <asp:Parameter Name="out_iunit" Type="String" />
                <asp:Parameter Name="out_profession" Type="String" />
                <asp:Parameter DbType="Date" Name="out_date" />
                <asp:Parameter DbType="Date" Name="out_date1" />
                <asp:Parameter Name="out_people" Type="String" />
                <asp:Parameter Name="out_check" Type="String" />
                <asp:Parameter Name="out_graduation" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="out_iunit" Type="String" />
                <asp:Parameter Name="out_profession" Type="String" />
                <asp:Parameter DbType="Date" Name="out_date" />
                <asp:Parameter DbType="Date" Name="out_date1" />
                <asp:Parameter Name="out_people" Type="String" />
                <asp:Parameter Name="out_check" Type="String" />
                <asp:Parameter Name="out_graduation" Type="String" />
                <asp:Parameter Name="out_sno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        姓名：<asp:Label ID="Label6" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学号（职工号）：<asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        迁入单位：<asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 迁出支部：<asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        是否为毕业生：<asp:Label ID="Label5" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        申请日期：<asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        回执提交证明：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <script type="text/javascript">CKEDITOR.replace('TextBox2', { toolbarCanCollapse: true, toolbarStartupExpanded: false, toolbar: [], height: '320px', width: '552px' });
</script>
        <br />
        <asp:Image ID="Image1" runat="server" Height="219px" OnDataBinding="GridView1_SelectedIndexChanged" Width="335px" />
        <br />
        <br />
        审批人：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="21px" Text="确认迁出" Width="103px" OnClick="Button1_Click" />
        <br />
    </form>
</body>
</html>
