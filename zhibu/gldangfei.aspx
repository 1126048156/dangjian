<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gldangfei.aspx.cs" Inherits="zhibu_gldangfei" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 940px">
    
        管理党费信息：<br />
        <br />
        创建新一期党费记录：<br />
        <br />
        *期数：&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp; *支部：&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <br />
        <br />
        *已交人数：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;&nbsp; *未交人数：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="创建" Width="95px" />
        <br />
        <br />
        每期党费缴纳总览：<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="m_moneytime" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="m_moneytime" HeaderText="期数" ReadOnly="True" SortExpression="m_moneytime" />
                <asp:BoundField DataField="m_profession" HeaderText="支部" SortExpression="m_profession" />
                <asp:BoundField DataField="m_date" HeaderText="时间" SortExpression="m_date" />
                <asp:BoundField DataField="m_ynum" HeaderText="已交人数" SortExpression="m_ynum" />
                <asp:BoundField DataField="m_nnum" HeaderText="未交人数" SortExpression="m_nnum" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT * FROM [money1]"></asp:SqlDataSource>
        添加未缴纳党费人员名单：<br />
        <br />
        *期数：<asp:TextBox ID="TextBox1" runat="server" Width="149px"></asp:TextBox>
&nbsp; *学号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp; *姓名：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" Width="75px" />
        <br />
        <br />
        党费未缴纳情况：期数：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="m_moneytime" DataValueField="m_moneytime">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT [m_moneytime] FROM [money1]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="m2_sno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView2_RowDeleted">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="m2_moneytime" HeaderText="期数" SortExpression="m2_moneytime" />
                <asp:BoundField DataField="m2_sno" HeaderText="学号" ReadOnly="True" SortExpression="m2_sno" />
                <asp:BoundField DataField="m2_name" HeaderText="姓名" SortExpression="m2_name" />
                <asp:BoundField DataField="m2_condition" HeaderText="党费状态" SortExpression="m2_condition" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" DeleteCommand="DELETE FROM [money2] WHERE [m2_sno] = @m2_sno" InsertCommand="INSERT INTO [money2] ([m2_moneytime], [m2_sno], [m2_condition], [m2_name]) VALUES (@m2_moneytime, @m2_sno, @m2_condition, @m2_name)" SelectCommand="SELECT * FROM [money2] WHERE ([m2_moneytime] = @m2_moneytime)" UpdateCommand="UPDATE [money2] SET [m2_moneytime] = @m2_moneytime, [m2_condition] = @m2_condition, [m2_name] = @m2_name WHERE [m2_sno] = @m2_sno">
            <DeleteParameters>
                <asp:Parameter Name="m2_sno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="m2_moneytime" Type="Int32" />
                <asp:Parameter Name="m2_sno" Type="String" />
                <asp:Parameter Name="m2_condition" Type="String" />
                <asp:Parameter Name="m2_name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" Name="m2_moneytime" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="m2_moneytime" Type="Int32" />
                <asp:Parameter Name="m2_condition" Type="String" />
                <asp:Parameter Name="m2_name" Type="String" />
                <asp:Parameter Name="m2_sno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
