/*
작성자 : 서경수
작성일 : 2013.10.20
내용 : 회원가입등록 js파일입니다.
*/

// 문서 시작 Function 입니다.
$(document).ready(function () {
    var id = $("#txtID");
    var dupId = $("#txtDup");
    var nick = $("#txtNick");
    var pwd = $("#txtPwd");
    var repwd = $("#txtRePwd");
    function isInputUserId() {
        if (!id.val()) {
            dupId.val("아이디를 입력해주세요");
            return false;
        }
        else {
            return true;
        }
    }
    id.focusout(id.val(), function () {
        var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if (!isInputUserId()) {
            id.focus();
            return;
        } else {
            if (!regExp.test(id.val())) {
                dupId.val("유효하지 않은 이메일입니다.");
                id.val("").focus();
                return;
            }
            else {
                GetData(id.val());
            }
        }
    });
    $("#Reg").click(function () {
        if (!isInputUserId()) {
            id.focus();
            return;
        }
        if (!nick.val()) {
            nick.focus();
            return;
        }
        if (!pwd.val()) {
            pwd.focus();
            return;
        }
        if (!repwd.val()) {
            repwd.focus();
            return;
        }
        if (pwd.val() != repwd.val()) {
            pwd.val("");
            repwd.val("");
            pwd.focus();
            return;
        }

        location.href = "Default.aspx";
    });
});

// 데이터 가져오기 Function 입니다.
function GetData(data) {
    //Select
    DoAjaxCall("SelectIdDup", data, "GetDataCallBack", "");

    //Insert
    //DoAjaxCall("SetDBUpdate", "&parameter1=" + $("#txtparameter1").value + "&parameter2=" + $("#parameter2"), "SetDBUpdateCallBack", "");
}

// 데이터 가져오기 콜백 Function 입니다.
function GetDataCallBack(data) {
    if (data.column1 == "0") {
        $("#txtDup").val("가입이 가능합니다.");
    }
    else {
        $("#txtDup").val("존재하는 E-mail입니다.");
    }
}