<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ShowMenu.aspx.cs" Inherits="index_ShowMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<meta http-equiv="X-UA-Compatible" content="IE=11;IE=10;IE=9"/>
    <title runat="server" id="title1"></title>
    
    <link href="css/master.css" type="text/css" rel="stylesheet" />
    <link href="css/base.css" type="text/css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>

    <div class="menuMiddle" runat="server">
        <div style="width:100%;height:450px;background-color:white;">
        <div class="menuLeft">
            
            <div class="" style="font-size:17px;margin-top:50px;width:237px;float:left;text-align:center;font-family:'Microsoft YaHei'; height: 248px;">
               <div style="background-image:url(html/images/left_title.jpg); height:40px;width:237px; line-height:40px;"> <asp:Label ID="Label3" runat="server" Text="" Style="font-size: 17px; color:white" ></asp:Label></div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <div style="background-image: url(html/images/left_lx_bg.jpg);margin-top:0px;height:160px;width:237px;float:left">
                    <ul style="font-size:15px; padding: 8px 15px;line-height: 2.4em;text-align:center">
                </HeaderTemplate>
                <ItemTemplate>
                    <li style="width:207px;height:30px;text-align:center"><a href="ShowMenu.aspx?Class=<%#Eval("CNmae") %>"><%#Eval("CNmae") %></a></li>
                </ItemTemplate>
                <FooterTemplate>
                  </ul></div>
                </FooterTemplate>
            </asp:Repeater>
            </div>
            
        </div>
        <div class="menuRight"  runat="server">
            <div style="width:840px;height:30px;float:left; margin-top:20px;border-bottom:1px solid #d9d9d9;">
                <font size="3" face="'Microsoft YaHei'">当前位置：&nbsp<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <span>&nbsp>&nbsp</span>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></font><br /><br />
            </div>
                  <asp:Repeater ID="Repeater2" runat="server">
                        <HeaderTemplate>
                            <table style="table-layout: fixed;width:840px;font-size:14px;" id="table1">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #fff;">
                                <td style="width:700px;height:25px;overflow:hidden;white-space:nowrap; text-overflow:ellipsis;">
                                    <a href="/Pages.aspx?ClassId=<%#Eval("ClassId") %>&NId=<%#Eval("NId")%>">
                                        ·&nbsp<%#Eval("Title") %></a></td>
                                <td style="font-size:13px">
                                    <%#Eval("Time") %>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    <table style="float:left;margin-top:20px;width:700px;">
                        <tr runat="server" >
                            <td style="width: 160px">第<asp:Label ID="CurrentPage" runat="server" Text="Label"></asp:Label>页&nbsp&nbsp
                                共<asp:Label ID="labPage" runat="server" Text="Label"></asp:Label>页&nbsp&nbsp
                                <asp:Label ID="countRecord" runat="server" Text="Label"></asp:Label>条记录
                            </td>
                            <td style="width: 30px; text-align: center" id="td1">
                                <asp:HyperLink ID="first" runat="server" >首页</asp:HyperLink></td>
                            <td style="width: 30px; text-align: center" id="td2">
                                <asp:HyperLink ID="up" runat="server">上页</asp:HyperLink></td>
                            <td style="width: 30px; text-align:center" id="td3">
                                <asp:HyperLink ID="next" runat="server">下页</asp:HyperLink></td>
                            <td style="width: 30px; text-align: center" id="td4">
                                <asp:HyperLink ID="last" runat="server">末页</asp:HyperLink></td>
                            <td >&nbsp&nbsp 跳到&nbsp<asp:TextBox ID="TextBox1" runat="server" Width="38px"></asp:TextBox>&nbsp 页
                                &nbsp&nbsp<asp:Button ID="Button1" runat="server" Text="G O" OnClick="Button1_Click" /></td>
                        </tr>
                        
                    </table>
               
        </div>            

        </div>
    </div>
    <hr id="foot-hr"/>
    <div class="foot1" >
            &nbsp;<br />
            <p>Copyright @ 2009-2016 All Rights Reserved. 武汉纺织大数学与计算机学院</p>

            <p>地址：武汉市江夏区阳光大道1号 邮政编码：430200 </p> 
            
            
            <p>电话：(027)59367297 &nbsp;E-mail：mcs@wtu.edu.cn</p>

           </div>

    
</asp:Content>
