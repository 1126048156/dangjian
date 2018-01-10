<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find3.aspx.cs" Inherits="zhibu_find3" enableEventValidation="false"%>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 186px;
        }
        .auto-style2 {
            width: 202px;
        }
        .auto-style3 {
            width: 233px;
        }
        .auto-style4 {
            width: 186px;
            height: 20px;
        }
        .auto-style5 {
            width: 202px;
            height: 20px;
        }
        .auto-style6 {
            width: 233px;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        查询党员信息：<br />
        <br />
        *姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; *支部：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="18px" Text="查询" Width="73px" OnClick="Button1_Click" OnDataBinding="Button1_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="c_sno" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-right: 0px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="s_name" HeaderText="姓名" SortExpression="s_name" />
                <asp:BoundField DataField="c_sno" HeaderText="学号（职工号）" ReadOnly="True" SortExpression="c_sno" />
                <asp:BoundField DataField="c_contactor" HeaderText="培养人" SortExpression="c_contactor" />
                <asp:BoundField DataField="c_profession" HeaderText="所属支部" SortExpression="c_profession" />
                <asp:BoundField DataField="c_partytime" HeaderText="入党时间" SortExpression="c_partytime" />
                <asp:BoundField DataField="c_note" HeaderText="党内职务" SortExpression="c_note" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" DeleteCommand="DELETE FROM [communist] WHERE [c_sno] = @c_sno" InsertCommand="INSERT INTO [communist] ([c_sno], [c_contactor], [c_profession], [c_partytime], [c_power], [c_note]) VALUES (@c_sno, @c_contactor, @c_profession, @c_partytime, @c_power, @c_note)" SelectCommand="SELECT [student].s_name,[communist].* FROM [communist] INNER JOIN [student] ON [communist].c_sno = [student].s_sno AND [student].s_academy=@s_academy AND [student].s_name=@s_name" UpdateCommand="UPDATE [communist] SET [c_contactor] = @c_contactor, [c_profession] = @c_profession, [c_partytime] = @c_partytime, [c_power] = @c_power, [c_note] = @c_note WHERE [c_sno] = @c_sno">
            <DeleteParameters>
                <asp:Parameter Name="c_sno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="c_sno" Type="String" />
                <asp:Parameter Name="c_contactor" Type="String" />
                <asp:Parameter Name="c_profession" Type="String" />
                <asp:Parameter DbType="Date" Name="c_partytime" />
                <asp:Parameter Name="c_power" Type="String" />
                <asp:Parameter Name="c_note" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="s_academy" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="s_name" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="c_contactor" Type="String" />
                <asp:Parameter Name="c_profession" Type="String" />
                <asp:Parameter DbType="Date" Name="c_partytime" />
                <asp:Parameter Name="c_power" Type="String" />
                <asp:Parameter Name="c_note" Type="String" />
                <asp:Parameter Name="c_sno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        单击某行查看党员详细信息：<br />
        <table aria-multiline="True" style="border-style: double; width: 100%;">
            <tr>
                <td class="auto-style1">姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">学号（职工号）：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">性别：<br />
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">籍贯：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">民族：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">居住地：<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">身份号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">学院：&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">电话：<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">邮箱：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">培养人：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">入党时间：&nbsp;&nbsp; <br />
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td aria-disabled="True" class="auto-style4">党内职务：<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button2" runat="server" Height="22px" OnClick="Button2_Click" Text="修改" Width="125px" />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
