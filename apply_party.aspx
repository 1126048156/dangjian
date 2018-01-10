<%@ Page Language="C#" AutoEventWireup="true" CodeFile="apply_party.aspx.cs" Inherits="apply_party" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>

    <title></title>
    <style type="text/css">
        #form1 {
            height: 303px;
        }
    </style>
</head>
<body>
    入党陈述:
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Rows="10" TextMode="MultiLine"></asp:TextBox>
            <script type="text/javascript">
                CKEDITOR.replace('TextBox1', {
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
});
            </script>
        </div>
        <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click1" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
    </form>
</body>
</html>

