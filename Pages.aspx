<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Pages.aspx.cs" Inherits="Pages" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta http-equiv="X-UA-Compatible" content="IE=11;IE=10;IE=9"/>
    <title runat="server" id="title1"></title>
    
    <link href="css/master.css" type="text/css" rel="stylesheet" />
    <link href="css/base.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.backtotop.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<script type="text/javascript">
    $(function () {
        var obj = $(".pageLeft");
        var navH = obj.offset().top; //获取要定位元素距离浏览器顶部的距离
        //滚动条事件
        $(window).scroll(function () {
            var scroH = $(this).scrollTop(); //获取滚动条的滑动距离
            //滚动条的滑动距离大于等于定位元素距离浏览器顶部的距离，就固定，反之就不固定
            if (scroH >= navH) {
                obj.css({ "position": "fixed", "top": "0" }); //top值因不同主题而定
                $(".pageRight").css({"margin-left":"260px"})
            } else if (scroH < navH) {
                obj.css({ "position": "static" });
                $(".pageRight").css({ "margin-left": "10px" })
            }
            //console.log(scroH==navH);
        })
    });
</script>    
        <div class="menuMiddle" >
        <div class="pageLeft" >
            <div  style="width:250px;font-size:13px;font-family:'Microsoft YaHei'">
                <div style="background-image:url(html/images/left_title.jpg); height:40px;width:237px;text-align:center;line-height:40px;">
                    <a runat="server" id="a2" style="text-decoration: none">
                        <asp:Label ID="Label6" runat="server" Text="" Style="font-size: 17px; color:white"></asp:Label></a>
                </div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table style="width:235px;height:auto;table-layout: fixed;border:1px solid #d9d9d9;">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                    <td style="width:231px;height:25px;overflow:hidden;white-space:nowrap; text-overflow:ellipsis;">
                        <a href="/Pages.aspx?ClassId=<%#Eval("ClassId") %>&NId=<%#Eval("NId")%>"> ·&nbsp<%#Eval("Title") %></a></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                  </table>
                </FooterTemplate>
            </asp:Repeater>
            </div>
            
        </div>
        <div class="pageRight" runat="server" >
            <div style="width:840px;height:30px;float:left;margin-top:20px;border-bottom:1px solid #d9d9d9;">
                <font size="3" face="'Microsoft YaHei'">当前位置：&nbsp<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <span>&nbsp>&nbsp</span>
             <a runat="server" id="a1" style="text-decoration:none"> 
		<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></a> 
                <span>>&nbsp 正文&nbsp</span></font><br /><br />
            </div>
            <div style="float:left;width:840px;margin-top:10px">
                <asp:Label ID="Label3" runat="server" Text="Label" Font-Size="Medium" Height="24px" style="text-align: center; font-weight: 700" Width="840px"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Size="Small" style="text-align: center" Width="840px"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label" Width="840px"></asp:Label><br /><br />
            </div>
                 
               
        </div>
            </div>
<hr id="foot-hr" />
    
        <div class="foot1">
            <br /><p>Copyright @ 2009-2016 All Rights Reserved. 武汉纺织大数学与计算机学院</p>
            <p>地址：武汉市江夏区阳光大道1号 邮政编码：430200 </p>
            <p>电话：(027)59367297 &nbsp;E-mail：mcs@wtu.edu.cn</p>

        </div>
 

</asp:Content>

