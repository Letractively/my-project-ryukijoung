function GetContents() {
    document.getElementById('editorcontents').innerHTML = CKEDITOR.instances.editor1.getData();
}

function GetAskList() {

    var searchType = '';
    var searchText = document.getElementById('txtAskSearchText').value;
   
    var data = { "searchType": searchType, "searchText": searchText };
    DoAjaxCall('Ask_List_Select', '', 'GetAskCallBack', data);
}

function GetAskCallBack(data) {
    var str = "<table border='1' style='width:500px;'>"
    for (var i = 0; i < data.length; i++) {
        str += "<tr><td>" + data[i].UserNickName + "</td>";
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
    var data = { 'userSeq':userSeq, 'title': title, 'ask': ask };
    DoAjaxCall('Ask_Insert', '', 'SetAskCallBack', data);
}

function SetAskCallBack(data) {
    alert("정상적으로 저장되었습니다.");
}