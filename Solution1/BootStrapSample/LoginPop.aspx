<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPop.aspx.cs" Inherits="LoginPop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>로그인</title>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var txtID = $("#txtID");
            var txtPW = $("#txtPw");
            $("#btnOk").click(function () {
                $.post("Default.aspx", { 'id': txtID.val(), 'pw': txtPW.val() }, true);
                window.close();
            });
            $("#btnReg").click(function () {

                window.close();
            });
        });
    </script>
</head>
<body>
    <div>
        ID :
        <input id="txtID" type="text" />
    </div>
    <div>
        PW :
        <input id="txtPw" type="password" />
    </div>
    <div>
        <input id="btnOk" type="button" value="로그인" /><input id="btnReg" type="button" value="회원가입" />
    </div>
</body>
</html>
