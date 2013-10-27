<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>MAQNA</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.js"></script> <!-- JQuery 2.3.0 최신 사이트 링크 -->
    <script type ="text/javascript" src="../js/Common.js"></script> <!-- Ajax통신을 위한 Common.js -->
    <script type ="text/javascript" src="../js/Default.js"></script> <!-- 개별적인 화면별 Js -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="ListData" /> <!-- 테이블이 그려질 Div -->
    </div>
    </form>
</body>
</html>
