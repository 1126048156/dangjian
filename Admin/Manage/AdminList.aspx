﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminList.aspx.cs" Inherits="ln2012.Admin.Manage.AdminList" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <link rel="stylesheet" type="text/css" href="../images/style.css" />

 <script src="../../js/jquery-1.4.1.js" type="text/javascript"></script>
 <link href="../../content/colorbox/colorbox.css" rel="stylesheet" type="text/css" />
 <link href="../../Content/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
 <script src="../../js/jquery-ui.min.js" type="text/javascript"></script>
 <script src="../../Content/colorbox/jquery.colorbox.js" type="text/javascript"></script>


 <script type="text/javascript">
     $(function () {
         $(".msgtable tr:nth-child(odd)").addClass("tr_bg"); //隔行变色
         $(".msgtable tr").hover(
			    function () {
			        $(this).addClass("tr_hover_col");
			    },
			    function () {
			        $(this).removeClass("tr_hover_col");
			    }
		    );
     });
     $(function () {
         $("a[rel='addClass']").click(function () {
             $(this).colorbox({
                 width: 1000,
                 heigth: 500,
                 href: "AdminAdd.aspx",
                 overlayClose: false,
                 close: "关闭",
                 onComplete: function () {
                    
                     $("#form1").validate({
                         //出错时添加的标签
                         errorElement: "span",
                         success: function (label) {
                             //正确时的样式
                             label.text(" ").addClass("success");
                         }
                     }); 

                     $("#btnCancel").click(function () {
                         $.colorbox.close();
                     });
                 }
             });
         });
         $("a[rel='editClass']").click(function () {
             $(this).colorbox({
                 width: 1000,
                 heigth: 500,
                 overlayClose: false,
                 close: "关闭",
                 onComplete: function () {
                     $("#btnCancel").click(function () {
                         $.colorbox.close();
                     });
                 },
                 onClosed: function () {
                     $.colorbox.remove();
                 }
             });
         });
        
     });
    </script>


</head>
<body>
    <form id="form1" runat="server">
    <div class="navigation"><span class="add"><a href="#addClass" rel="addClass">增加管理员</a></span><b>您当前的位置：首页 &gt; 系统管理 &gt; 管理员列表</b></div>
        <div style="padding-bottom:10px;"></div>
        <div>
            <asp:Repeater ID="rptList" runat="server"  onitemcommand="rptList_ItemCommand">
            <HeaderTemplate>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="msgtable">
              <tr>
                 <th width="7%">选择</th>
                 <th width="17%">管理帐号</th>
                 <th width="17%">权限</th>
                 <th width="17%">删除</th>
                 <th width="13%">操作</th>
              </tr>
            </HeaderTemplate>
            <ItemTemplate>
              <tr>
                <td align="center">
                    <asp:CheckBox ID="cb_id" CssClass="checkall" runat="server" />
                    <asp:Label ID="lb_id" runat="server" Text='<%#Eval("MID")%>' Visible="False"></asp:Label>
                </td>
                <td><%#Eval("MName")%></td>
                <td><%#Eval("MPower")%></td>
                <td align="center">
                  <%#Eval("MRole").ToString().Trim() == "1" ? "<img title=\"是\" src=\"../images/correct.gif\" />" : "<img title=\"否\" src=\"../images/disable.gif\" />"%>
                </td>
           
                <td align="center"><span><a href="AdminAdd.aspx?id=<%#Eval("MID") %>">编辑</a></span>
               
                  <asp:LinkButton ID="LinkButton1" runat="server" CommandName="del" >删除</asp:LinkButton>
                
                </td>


              </tr>
            </ItemTemplate>
            <FooterTemplate>
            </table>
            </FooterTemplate>
            </asp:Repeater>
            
 <webdiyer:AspNetPager ID="AspNetPager1"  runat="server"  PageSize="10"  FirstPageText="首页"  LastPageText="末页" NextPageText="下一页" PrevPageText="上一页" AlwaysShow="true"  onpagechanging="AspNetPager1_PageChanging" CssClass="paginator"   CurrentPageButtonClass="cpb"></webdiyer:AspNetPager>

            <div class="spClear"></div>

    </form>
</body>
</html>
