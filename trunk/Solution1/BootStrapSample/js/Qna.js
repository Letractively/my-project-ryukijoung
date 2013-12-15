
///////////////////////////////////////////////////////////////////////////////////////

// 질문목록 조회
function GetAskList() {
    var searchType = '';
    var searchText = document.getElementById('txtAskSearchText').value;

    var data = { 'searchType': searchType, 'searchText': searchText };
    DoAjaxCall('GetAskList', '', 'GetAskListCallBack', data);
}

// 질문목록 조회 콜백
function GetAskListCallBack(data) {
    var str
    if (data.length > 0) {
        str = "<table border='1' style='width:500px;'>"
        str += "<th>좋은질문</th><th>사용자</th><th>제목</th><th>조회수</th><th>답변수</th><th>등록일</th>"
        for (var i = 0; i < data.length; i++) {
            str += "<tr>";
            str += "<td><a onclick='GoodAsk(" + data[i].AskSeq + ");'><span id=span" + data[i].AskSeq + ">" + data[i].GoodAskCount + "</span></a></td>";
            str += "<td>" + data[i].UserNickName + "</td>";
            str += "<td><a href='AskDetail.aspx?seq=" + data[i].AskSeq + "'>" + data[i].AskTitle + "</a></td>";
            str += "<td>" + data[i].AskCount + "</td>";
            str += "<td>" + data[i].AnswerCount + "</td>";
            str += "<td>" + data[i].AskRegDate + "</td></tr>";
        }
        str += "</table>";
    }
    else {
        str = "데이터가 하나도 음써욤";
    }
    $("#divAskList").html(str);
}

///////////////////////////////////////////////////////////////////////////////////////

// 좋은질문
function GoodAsk(seq) {
    var userSeq;
    if (window.sessionStorage['LoginKey']) {
        userSeq = sessionStorage['LoginKey'];
    }
    else {
        userSeq = -1;
    }
    var data = { 'seq': seq, 'userSeq': userSeq };
    DoAjaxCall('GoodAsk', '', 'GoodAskCallBack', data);
}

// 좋은질문 콜백
function GoodAskCallBack(data) {
    if (data[1] == -1) {
        alert("오늘은 이미 추천하셨습니다.");
    }
    else {
        var ask = document.getElementById('span' + data[0]);
        ask.textContent = data[1];
    }
}

///////////////////////////////////////////////////////////////////////////////////////

// 질문하기
function SetAsk() {
    if (window.sessionStorage['LoginKey']) {
        var userSeq = sessionStorage['LoginKey'];
        var title = document.getElementById('txtAskTitle').value;
        var ask = htmlEscape(CKEDITOR.instances.askEditor.getData());
        var askSeq = document.getElementById('hidAskSeq').value;
        var data = { 'askSeq': askSeq, 'userSeq': userSeq, 'title': title, 'ask': ask };
        DoAjaxCall('SetAsk', '', 'SetAskCallBack', data);
    }
    else {
        // 로그인 페이지로 이동 -> 로그인후에 다시 돌아와야함
        alert("로그인하세염");
        document.location = '../Login.aspx';
    }
}

// 질문하기 콜백
function SetAskCallBack(data) {
    alert('정상적으로 저장되었습니다.');
    document.location = 'Ask.aspx';
}

///////////////////////////////////////////////////////////////////////////////////////

// 질문상세수정
function GetRegAskDetail() {
    if ($.getUrlVar('seq')) {
        var seq = $.getUrlVar('seq');
        document.getElementById('hidAskSeq').value = seq;
        var data = { 'seq': seq };
        DoAjaxCall('GetRegAskDetail', '', 'GetRegAskDetailCallBack', data);
    }
}

// 질문상세수정 콜백
function GetRegAskDetailCallBack(data) {
    //제목
    $("#txtAskTitle")[0].value = data[0].AskTitle;
    //document.getElementById('txtAskTitle').value = data[0].AskTitle;

    //상세내용
    CKEDITOR.instances.askEditor.setData(htmlUnescape(data[0].AskDoc));
}

///////////////////////////////////////////////////////////////////////////////////////

// 질문상세 조회
function GetAskDetail() {
    var seq = $.getUrlVar('seq');
    var data = { 'seq': seq };
    DoAjaxCall('GetAskDetail', '', 'GetAskDetailCallBack', data);
}

// 질문상세 콜백
function GetAskDetailCallBack(data) {
    //   <input onclick="AskUpdate();" type="button" value="수정" /> <input onclick="    AskDelete();" type="button" value="삭제" />
    // 버튼
    if (window.sessionStorage['LoginKey']) {
        if (sessionStorage['LoginKey'] == data[0].UsersSeq) {
            $('#divBtn').html("<input onclick='AskUpdate();' type='button' value='수정' /> <input onclick='AskDelete();' type='button' value='삭제' />");
        }
    }
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

///////////////////////////////////////////////////////////////////////////////////////

// 좋은답변
function GoodAnswer(seq) {
    if (window.sessionStorage['LoginKey']) {
        var userSeq = sessionStorage['LoginKey'];
        var data = { 'seq': seq, 'userSeq': userSeq };
        DoAjaxCall('GoodAnswer', '', 'GoodAnswerCallBack', data);
    }
    else {
        // 로그인 페이지로 이동 -> 로그인후에 다시 돌아와야함
        alert("로그인하세염");
        document.location = '../Login.aspx';
    }
}

// 좋은답변 콜백
function GoodAnswerCallBack(data) {
    if (data[1] == -1) {
        alert("오늘은 이미 추천하셨습니다.");
    }
    else {
        var answer = document.getElementById('span' + data[0]);
        answer.textContent = data[1];
    }
}

///////////////////////////////////////////////////////////////////////////////////////

// 답변하기
function SetAnswer() {
    if (window.sessionStorage['LoginKey']) {
        var askSeq = document.getElementById('hidAskSeq').value;
        var answer = htmlEscape(CKEDITOR.instances.answerEditor.getData());
        var userSeq = sessionStorage['LoginKey'];
        var data = { 'askSeq': askSeq, 'answer': answer, 'userSeq': userSeq };
        DoAjaxCall('SetAnswer', '', 'SetAnswerCallBack', data);
    }
    else {
        // 로그인 페이지로 이동 -> 로그인후에 다시 돌아와야함
        alert("로그인하세염");
        document.location = '../Login.aspx';
    }
}

// 답변하기 콜백
function SetAnswerCallBack(data) {
    alert('정상적으로 저장되었습니다.');
    document.location = document.location;
}

///////////////////////////////////////////////////////////////////////////////////////

// 질문수정
function AskUpdate() {
    if (window.sessionStorage['LoginKey']) {
        var askSeq = document.getElementById('hidAskSeq').value;
        //var userSeq = sessionStorage['LoginKey'];
        document.location = "/QNA/AskReg.aspx?seq=" + askSeq;
    }
    else {
        // 로그인 페이지로 이동 -> 로그인후에 다시 돌아와야함
        alert("로그인하세염");
        document.location = '../Login.aspx';
    }
}

// 질문삭제
function AskDelete() {
    if (window.sessionStorage['LoginKey']) {
        if (confirm("정말 삭제하시겠습니까?") == true) {
            var askSeq = document.getElementById('hidAskSeq').value;
            var data = { 'askSeq': askSeq };
            DoAjaxCall('AskDelete', '', 'AskDeleteCallBack', data);
        }
    }
    else {
        // 로그인 페이지로 이동 -> 로그인후에 다시 돌아와야함
        alert("로그인하세염");
        document.location = '../Login.aspx';
    }
}

// 질문삭제 콜백
function AskDeleteCallBack(data) {
    alert('정상적으로 삭제되었습니다.');
    document.location = 'Ask.aspx';
}
