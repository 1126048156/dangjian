<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find2.aspx.cs" Inherits="find2" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        查询资讯：<br />
        <br />
        资讯编号：<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
&nbsp; 发布时间：<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        发布人：&nbsp;<asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
        &nbsp; 文件类型：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="31px" style="margin-bottom: 0px" Width="148px">
            <asp:ListItem>通知</asp:ListItem>
            <asp:ListItem>视频</asp:ListItem>
            <asp:ListItem>文章</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" OnDataBinding="Button1_Click" Width="75px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="s_id,s_fname" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="s_id" HeaderText="编号" ReadOnly="True" SortExpression="s_id" />
                <asp:BoundField DataField="s_title" HeaderText="标题" SortExpression="s_title" />
                <asp:BoundField DataField="s_date" HeaderText="发布日期" SortExpression="s_date" />
                <asp:BoundField DataField="s_type" HeaderText="类型" SortExpression="s_type" />
                <asp:BoundField DataField="s_people" HeaderText="发布人" SortExpression="s_people" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dangjianConnectionString %>" DeleteCommand="DELETE FROM [study] WHERE [s_id] = @s_id" InsertCommand="INSERT INTO [study] ([s_id], [s_title], [s_date], [s_type], [s_people], [s_add1], [s_fname]) VALUES (@s_id, @s_title, @s_date, @s_type, @s_people, @s_add1, @s_fname)" SelectCommand="SELECT * FROM [study] WHERE (([s_id] = @s_id) AND ([s_date] = @s_date) AND ([s_people] = @s_people) AND ([s_type] = @s_type))" UpdateCommand="UPDATE [study] SET [s_title] = @s_title, [s_date] = @s_date, [s_type] = @s_type, [s_people] = @s_people, [s_add1] = @s_add1, [s_fname] = @s_fname WHERE [s_id] = @s_id" OnDataBinding="Button1_Click">
            <DeleteParameters>
                <asp:Parameter Name="s_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="s_id" Type="String" />
                <asp:Parameter Name="s_title" Type="String" />
                <asp:Parameter DbType="Date" Name="s_date" />
                <asp:Parameter Name="s_type" Type="String" />
                <asp:Parameter Name="s_people" Type="String" />
                <asp:Parameter Name="s_add1" Type="String" />
                <asp:Parameter Name="s_fname" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="s_id" PropertyName="Text" Type="String" DefaultValue="" />
                <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="s_date" PropertyName="Text" DefaultValue="" />
                <asp:ControlParameter ControlID="TextBox3" Name="s_people" PropertyName="Text" Type="String" DefaultValue="" />
                <asp:ControlParameter ControlID="DropDownList1" Name="s_type" PropertyName="Text" Type="String" DefaultValue="" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="s_title" Type="String" />
                <asp:Parameter DbType="Date" Name="s_date" />
                <asp:Parameter Name="s_type" Type="String" />
                <asp:Parameter Name="s_people" Type="String" />
                <asp:Parameter Name="s_add1" Type="String" />
                <asp:Parameter Name="s_fname" Type="String" />
                <asp:Parameter Name="s_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
         点击某行查看详细内容<br />
        <asp:TextBox ID="TextBox5" runat="server" Height="220px" ReadOnly="True" Width="945px" OnTextChanged="TextBox5_TextChanged" TextMode="MultiLine"></asp:TextBox>
&nbsp; 
        <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
        <script>CKEDITOR.replace('TextBox5', { toolbarCanCollapse: true, toolbarStartupExpanded: false, toolbar: [], height: '320px', width: '552px' });</script>
       
        <br /></div>
    </form>
</body>
</html>
