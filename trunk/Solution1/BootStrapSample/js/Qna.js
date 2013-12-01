function GetContents() {
    document.getElementById('editorcontents').innerHTML = CKEDITOR.instances.askEditor.getData();
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
        str += "<td><a href='AskDetail.aspx?seq=" + data[i].AskSeq + "'>" + data[i].AskTitle + "</a></td>";
        str += "<td>" + data[i].AskCount + "</td></tr>";
    }
    str += "</table>";

    $("#divAskList").html(str);
}

function SetAsk() {
    //var userSeq = sessionStorage['UserSeq'];
    var userSeq = '1'
    var title = document.getElementById('txtAskTitle').value;
    var ask = htmlEscape(CKEDITOR.instances.askEditor.getData());
    var data = { 'userSeq': userSeq, 'title': title, 'ask': ask };
    DoAjaxCall('SetAsk', '', 'SetAskCallBack', data);
}

function SetAskCallBack(data) {
    alert('정상적으로 저장되었습니다.');
    window.location = 'Ask.aspx';
}

function GetAskDetail() {
    var seq = $.getUrlVar('seq');
    var data = { 'seq': seq };
    DoAjaxCall('GetAskDetail', '', 'GetAskDetailCallBack', data);
}

function GetAskDetailCallBack(data) {
    //제목
    var strTitle = "<input type='hidden' id='hidAskSeq' value='" + data[0].AskSeq + "' />";
    strTitle += "<h1>" + data[0].AskTitle + "</h1><p/>";
    $("#divAskDetailTitle").html(strTitle);

    //상세내용
    var strDoc = data[0].AskDoc;
    document.getElementById('divAskDetailDoc').innerHTML = htmlUnescape(strDoc);

    // 답변
    var strAnswer = '';
    for (var i = 0; i < data[0].Answers.length; i++) {
        strAnswer += "사용자:" + data[0].Answers[i].UserNickName + "";
        strAnswer += "<br/>" + data[0].Answers[i].Answer + "<br/>";
    }
    if (strAnswer.length > 0)
        document.getElementById('divAnswer').innerHTML = '<hr /><h2>등록된답변</h2>' + htmlUnescape(strAnswer);
}

function SetAnswer() {
    var askSeq = document.getElementById('hidAskSeq').value;
    var answer = htmlEscape(CKEDITOR.instances.answerEditor.getData());
    //var userSeq = sessionStorage['UserSeq'];
    var userSeq = '1'
    var data = { 'askSeq': askSeq, 'answer': answer, 'userSeq': userSeq };
    DoAjaxCall('SetAnswer', '', 'SetAnswerCallBack', data);
}

function SetAnswerCallBack(data) {
    alert('정상적으로 저장되었습니다.');
    window.location = 'Ask.aspx';
}