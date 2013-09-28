<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditorForm.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="ckeditor/ckeditor.js"></script>
    <script>
        function GetContents() {
            document.getElementById('editorcontents').innerHTML = CKEDITOR.instances.editor1.getData();
        }

    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <textarea class="ckeditor" name="editor1"></textarea>
        <br />
        <input onclick="GetContents();" type="button" value="확인" />
        <div id="editorcontents"></div>
    </form>
</body>
</html>
