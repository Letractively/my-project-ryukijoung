<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutoRegPreventForm.aspx.cs" Inherits="AutoRegPrevent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="img/Background.png" id="img" /><br />
            <asp:TextBox ID="txtPwdWord" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            글쓰기 자동방지 이미지</div>
    </form>
</body>
</html>
