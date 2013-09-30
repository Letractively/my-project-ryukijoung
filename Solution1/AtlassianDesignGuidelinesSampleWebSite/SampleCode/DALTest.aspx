<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DALTest.aspx.cs" Inherits="DALTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            alert("이야");
            $.ajax({
                type: "post",
                url: "http://localhost:8182/AtlassianDesignGuidelinesSampleWebSite/SampleCode/DALTest.aspx/GetMessage",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    alert(data.d); // 단일값 : {d:'닷넷코리아'}
                },
                error: function (data) { alert('에러 발생'); }

            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" Height="378px" Width="585px">
        </asp:GridView>
        <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>



        <%--<table id="datatable">
            <thead>
                <tr>
                    <th>Type</th>
                    <th>Value</th>
                    <th>ID</th>
                    <th>Fizz</th>
                    <th>Buzz</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>--%>
    </form>
</body>
</html>
