<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glkh.aspx.cs" Inherits="zhibu_glkh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        管理考核<br />
        <br />
        考核统计表：<br />
        <br />
        创建新一期考核记录：<br />
        <br />
        期数：&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp; 类型：&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        考核时间：<asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
&nbsp; 
        <br />
        <br />
        参与人数：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        及格人数：<asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="创建" Width="99px" OnClick="Button1_Click1" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="t_time" HeaderText="期数" SortExpression="t_time" />
                <asp:BoundField DataField="t_type" HeaderText="类型" SortExpression="t_type" />
                <asp:BoundField DataField="t_date" HeaderText="考核时间" SortExpression="t_date" />
                <asp:BoundField DataField="t_num" HeaderText="参与人数" SortExpression="t_num" />
                <asp:BoundField DataField="t_num1" HeaderText="及格人数" SortExpression="t_num1" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT * FROM [test1]"></asp:SqlDataSource>
        <br />
        查看某期考核具体信息<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="t_time" DataValueField="t_time">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT [t_type], [t_time] FROM [test1]"></asp:SqlDataSource>
        <br />
        录入成绩：<br />
        <br />
        期数：<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;姓名：<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;学号：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;分数：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="录入" Width="68px" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="t_sno" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="t_time" HeaderText="期数" SortExpression="t_time" />
                <asp:BoundField DataField="t_name" HeaderText="姓名" SortExpression="t_name" />
                <asp:BoundField DataField="t_sno" HeaderText="学号" SortExpression="t_sno" ReadOnly="True" />
                <asp:BoundField DataField="t_sco" HeaderText="分数" SortExpression="t_sco" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" SelectCommand="SELECT * FROM [test] WHERE ([t_time] = @t_time)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="t_time" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
