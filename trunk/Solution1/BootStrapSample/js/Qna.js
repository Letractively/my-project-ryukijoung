function GetContents() {
    document.getElementById('editorcontents').innerHTML = CKEDITOR.instances.editor1.getData();
}

function GetAskList() {

    var searchType = '';
    var searchText = document.getElementById('txtAskSearchText').value;

    var data = { "searchType": searchType, "searchText": searchText };
    DoAjaxCall('GetAskList', '', 'GetAskListCallBack', data);
}

function GetAskListCallBack(data) {
    var str = "<table border='1' style='width:500px;'>"
    str += "<th>사용자</th><th>제목</th><th>조회수</th>"
    for (var i = 0; i < data.length; i++) {
        str += "<tr>";
        str += "<td>" + data[i].UserNickName + "</td>";
        str += "<td>" + data[i].AskTitle + "</td>";
        str += "<td>" + data[i].AskCount + "</td></tr>";
    }
    str += "</table>";

    $("#divAskList").html(str);
}

function SetAsk() {
    //var userSeq = sessionStorage['UserSeq'];
    var userSeq = '1'
    var title = document.getElementById('txtAskTitle').value;
    var ask = htmlEscape(CKEDITOR.instances.editor1.getData());
    var data = { 'userSeq': userSeq, 'title': title, 'ask': ask };
    DoAjaxCall('SetAsk', '', 'SetAskCallBack', data);
}

function SetAskCallBack(data) {
    alert('정상적으로 저장되었습니다.');
    window.location = 'Ask.aspx';
}