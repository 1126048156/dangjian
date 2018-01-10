<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find.aspx.cs" Inherits="find" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ��ѯ��Ѷ��<br />
        <br />
        ���ű�ţ�<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
&nbsp; ����ʱ�䣺<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        �����ˣ�&nbsp;<asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
        &nbsp; �ļ����ͣ�<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="31px" style="margin-bottom: 0px" Width="148px">
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>֪ͨ</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" OnDataBinding="Button1_Click" Width="75px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="an_id,an_fname" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="an_id" HeaderText="���" ReadOnly="True" SortExpression="an_id" />
                <asp:BoundField DataField="an_title" HeaderText="����" SortExpression="an_title" />
                <asp:BoundField DataField="an_type" HeaderText="����" SortExpression="an_type" />
                <asp:BoundField DataField="an_people" HeaderText="������" SortExpression="an_people" />
                <asp:BoundField DataField="an_date" HeaderText="����ʱ��" SortExpression="an_date" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:28dayConnectionString %>" DeleteCommand="DELETE FROM [announce] WHERE [an_id] = @an_id" InsertCommand="INSERT INTO [announce] ([an_id], [an_title], [an_people], [an_date], [an_type], [an_add1], [an_add2], [an_fname]) VALUES (@an_id, @an_title, @an_people, @an_date, @an_type, @an_add1, @an_add2, @an_fname)" SelectCommand="SELECT * FROM [announce] WHERE (([an_id] = @an_id) AND ([an_date] = @an_date) AND ([an_people] = @an_people) AND ([an_type] = @an_type))" UpdateCommand="UPDATE [announce] SET [an_title] = @an_title, [an_people] = @an_people, [an_date] = @an_date, [an_type] = @an_type, [an_add1] = @an_add1, [an_add2] = @an_add2, [an_fname] = @an_fname WHERE [an_id] = @an_id" OnDataBinding="Button1_Click">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="an_id" PropertyName="Text" Type="String" DefaultValue="" />
                <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="an_date" PropertyName="Text" DefaultValue="" />
                <asp:ControlParameter ControlID="TextBox3" Name="an_people" PropertyName="Text" Type="String" DefaultValue="" />
                <asp:ControlParameter ControlID="DropDownList1" Name="an_type" PropertyName="Text" Type="String" DefaultValue="" />
            </SelectParameters>
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
        <br />
         ���ĳ�в鿴��ϸ����<br />
        <asp:TextBox ID="TextBox5" runat="server" Height="220px" ReadOnly="True" Width="945px" OnTextChanged="TextBox5_TextChanged" TextMode="MultiLine"></asp:TextBox>
&nbsp;
        <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
        <script>CKEDITOR.replace('TextBox5', { toolbarCanCollapse: true, toolbarStartupExpanded: false, toolbar: [], height: '320px', width: '552px' });</script>
        <br /></div>
    </form>
</body>
</html>
