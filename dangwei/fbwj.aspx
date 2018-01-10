<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fbwj.aspx.cs" Inherits="fbwj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="an_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="246px" Width="420px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="an_id" HeaderText="an_id" ReadOnly="True" SortExpression="an_id" />
                <asp:BoundField DataField="an_title" HeaderText="an_title" SortExpression="an_title" />
                <asp:BoundField DataField="an_people" HeaderText="an_people" SortExpression="an_people" />
                <asp:BoundField DataField="an_date" HeaderText="an_date" SortExpression="an_date" />
                <asp:BoundField DataField="an_type" HeaderText="an_type" SortExpression="an_type" />
                <asp:BoundField DataField="an_add1" HeaderText="an_add1" SortExpression="an_add1" />
                <asp:BoundField DataField="an_add2" HeaderText="an_add2" SortExpression="an_add2" />
                <asp:BoundField DataField="an_fname" HeaderText="an_fname" SortExpression="an_fname" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:28dayConnectionString %>" DeleteCommand="DELETE FROM [announce] WHERE [an_id] = @an_id" InsertCommand="INSERT INTO [announce] ([an_id], [an_title], [an_people], [an_date], [an_type], [an_add1], [an_add2], [an_fname]) VALUES (@an_id, @an_title, @an_people, @an_date, @an_type, @an_add1, @an_add2, @an_fname)" SelectCommand="SELECT * FROM [announce]" UpdateCommand="UPDATE [announce] SET [an_title] = @an_title, [an_people] = @an_people, [an_date] = @an_date, [an_type] = @an_type, [an_add1] = @an_add1, [an_add2] = @an_add2, [an_fname] = @an_fname WHERE [an_id] = @an_id">
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
                <asp:Parameter Name="an_add2" Type="String" />
                <asp:Parameter Name="an_fname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="an_title" Type="String" />
                <asp:Parameter Name="an_people" Type="String" />
                <asp:Parameter DbType="Date" Name="an_date" />
                <asp:Parameter Name="an_type" Type="String" />
                <asp:Parameter Name="an_add1" Type="String" />
                <asp:Parameter Name="an_add2" Type="String" />
                <asp:Parameter Name="an_fname" Type="String" />
                <asp:Parameter Name="an_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
