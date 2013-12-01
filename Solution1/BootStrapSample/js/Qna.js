//function GetContents() {
//    document.getElementById('editorcontents').innerHTML = CKEDITOR.instances.askEditor.getData();
//}

// 질문목록 조회
function GetAskList() {

    var searchType = '';
    var searchText = document.getElementById('txtAskSearchText').value;

    var data = { 'searchType': searchType, 'searchText': searchText };
    DoAjaxCall('GetAskList', '', 'GetAskListCallBack', data);
}

// 질문목록 조회 콜백
function GetAskListCallBack(data) {
    var str = "<table border='1' style='width:500px;'>"
    str += "<th>좋은질문</th><th>사용자</th><th>제목</th><th>조회수</th><th>답변수</th><th>등록일</th>"
    for (var i = 0; i < data.length; i++) {
        str += "<tr>";
        str += "<td>" + data[i].GoodAskCount + "</td>";
        str += "<td>" + data[i].UserNickName + "</td>";
        str += "<td><a href='AskDetail.aspx?seq=" + data[i].AskSeq + "'>" + data[i].AskTitle + "</a></td>";
        str += "<td>" + data[i].AskCount + "</td>";
        str += "<td>" + data[i].AnswerCount + "</td>";
        str += "<td>" + data[i].AskRegDate + "</td></tr>";
    }
    str += "</table>";

    $("#divAskList").html(str);
}

// 질문하기
function SetAsk() {
    if (window.sessionStorage['LoginKey']) {
        var userSeq = sessionStorage['LoginKey'];
        var title = document.getElementById('txtAskTitle').value;
        var ask = htmlEscape(CKEDITOR.instances.askEditor.getData());
        var data = { 'userSeq': userSeq, 'title': title, 'ask': ask };
        DoAjaxCall('SetAsk', '', 'SetAskCallBack', data);
    }
}

// 질문하기 콜백
function SetAskCallBack(data) {
    alert('정상적으로 저장되었습니다.');
    window.location = 'Ask.aspx';
}

// 질문상세 조회
function GetAskDetail() {
    var seq = $.getUrlVar('seq');
    var data = { 'seq': seq };
    DoAjaxCall('GetAskDetail', '', 'GetAskDetailCallBack', data);
}

// 질문상세 콜백
function GetAskDetailCallBack(data) {
    //제목
    var strTitle = "<input type='hidden' id='hidAskSeq' value='" + data[0].AskSeq + "' />";
    strTitle += "<div class='page-header'><h2>" + data[0].AskTitle + "</h2></div>";
    $("#divAskDetailTitle").html(strTitle);

    //상세내용
    var strDoc = data[0].AskDoc;
    document.getElementById('divAskDetailDoc').innerHTML = "<p>" + htmlUnescape(strDoc) + "</p>";

    // 답변
    var strAnswer = '';
    for (var i = 0; i < data[0].Answers.length; i++) {
        strAnswer += "<table class='table table-bordered'>";
        strAnswer += "<thead><tr><th colspan='2'>사용자:" + data[0].Answers[i].UserNickName + "</th></tr></thead>";
        strAnswer += "<tbody><tr id='class-summary'><td><p class='class-scope'><a onclick='GoodAnswer(" + data[0].Answers[i].AnswerSeq + ");'>좋은답변</a><span id=span" + data[0].Answers[i].AnswerSeq + ">" + data[0].Answers[i].GoodAnswerCount + "</span></p></td>"
        strAnswer += "<td><p class='class-desc'>" + data[0].Answers[i].Answer + "</p></td></tbody></table>";
    }
    if (strAnswer.length > 0)
        document.getElementById('divAnswer').innerHTML = htmlUnescape(strAnswer);
}

// 좋은답변
function GoodAnswer(seq) {
    var userSeq;
    if (window.sessionStorage['LoginKey']) {
        userSeq = sessionStorage['LoginKey'];
    }
    else {
        userSeq = -1;
    }
    var data = { 'seq': seq, 'userSeq': userSeq };
    DoAjaxCall('GoodAnswer', '', 'GoodAnswerCallBack', data);
}

// 좋은답변 콜백
function GoodAnswerCallBack(data) {
    var answer = document.getElementById('span' + data[0]);
    answer.textContent = data[1];
}

// 답변하기
function SetAnswer() {
    var askSeq = document.getElementById('hidAskSeq').value;
    var answer = htmlEscape(CKEDITOR.instances.answerEditor.getData());
    //var userSeq = sessionStorage['UserSeq'];
    var userSeq = '1'
    var data = { 'askSeq': askSeq, 'answer': answer, 'userSeq': userSeq };
    DoAjaxCall('SetAnswer', '', 'SetAnswerCallBack', data);
}

// 답변하기 콜백
function SetAnswerCallBack(data) {
    alert('정상적으로 저장되었습니다.');
    window.location = window.location;
}