<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fbzx.aspx.cs" Inherits="fbzx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Text1 {
            height: 142px;
            width: 975px;
        }
    </style>
     <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script src="UploadResource/jquery-1.7.1.min.js"></script>
    <link href="UploadResource/webuploader.css" rel="stylesheet" />
    <script src="UploadResource/webuploader.js"></script>
    <script type="text/javascript">
        function addFile() {
            var div = document.createElement("div");
            var f = document.createElement("input");
            f.setAttribute("type", "file")
            f.setAttribute("name", "File")
            f.setAttribute("size", "50")
            div.appendChild(f)
            var d = document.createElement("input");
            d.setAttribute("type", "button")
            d.setAttribute("onclick", "deteFile(this)");
            d.setAttribute("value", "移除")
            div.appendChild(d)
            document.getElementById("_container").appendChild(div);
        }

        function deteFile(o) {
            while (o.tagName != "DIV") o = o.parentNode;
            o.parentNode.removeChild(o);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post" enctype="multipart/form-data">
    <div style="color: #000000">
    
      
        发布资讯：<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        *文件编号：<asp:TextBox ID="TextBox1" runat="server" Width="122px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *标题：<asp:TextBox ID="TextBox2" runat="server" Height="19px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<br />
        <br />
        *发布人： <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        *资讯类型：<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="102px">
            <asp:ListItem>新闻</asp:ListItem>
            <asp:ListItem>公告</asp:ListItem>
            <asp:ListItem>通知</asp:ListItem>
        </asp:DropDownList>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
   <asp:TextBox ID="TextBox3" runat="server" Rows="10" TextMode="MultiLine" Height="233px" Width="244px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
   <script type="text/javascript">CKEDITOR.replace('TextBox3'/*, {
    language: 'zh-cn',
    toolbar: [
['Cut', 'Copy', 'Paste', 'PasteText',

'PasteFromWord'],
['Undo', 'Redo', '-', 'Find', 'Replace', '-',

'SelectAll', 'RemoveFormat'],
'/',
['Bold', 'Italic', 'Underline'],
['NumberedList', 'BulletedList', '-', 'Outdent',

'Indent'],
['JustifyLeft', 'JustifyCenter', 'JustifyRight',

'JustifyBlock'],
['HorizontalRule',
'Smiley', 'SpecialChar', 'PageBreak'],
['Styles', 'Format', 'Font', 'FontSize'],
['TextColor', 'BGColor']
    ]
}*/);
   </script>
      <div id="_container">
    <input type="file" size="50" name="File" />
  </div>
  <div>
      <br />
    <input type="button" value="添加文件(Add)" onclick="addFile()" />
  </div>
  <div>
    <asp:Label ID="strStatus" runat="server" Font-Names="宋体" Font-Bold="True" Font-Size="9pt"
      Width="500px" BorderStyle="None" BorderColor="White"></asp:Label>
  </div>
        <asp:Button ID="Button1" runat="server" Text="发布" OnClick="Button1_Click" />
      
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
    </div>
    </form>
</body>
</html>
