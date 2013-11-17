/*
작성자 : 서경수
작성일 : 2013.10.20
내용 : 회원가입등록 js파일입니다.
*/

// 문서 시작 Function 입니다.
$(document).ready(function () {
    var result = $("#result");
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
                var parameter = "&UserId=" + id.val();
                GetData("IdDup_Select", parameter);
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
            result.val("비밀번호가 다름니다.");
            return;
        }

        var parameter = "&UserId=" + id.val();
        parameter += "&NickName=" + nick.val();
        parameter += "&PassWd=" + pwd.val();

        GetData("User_Insert", parameter);
    });
});

// 데이터 가져오기 Function 입니다.
function GetData(spname, data) {
    //Select
    DoAjaxCall(spname, data, "GetDataCallBack", "");

    //Insert
    //DoAjaxCall("SetDBUpdate", "&parameter1=" + $("#txtparameter1").value + "&parameter2=" + $("#parameter2"), "SetDBUpdateCallBack", "");
}

// 데이터 가져오기 콜백 Function 입니다.
function GetDataCallBack(data) {
    if (data.Column1 != "undefined") {
        if (data.Column1 == "0") {
            $("#result").val("가입이 가능합니다.");
        }
        else {
            $("#result").val("존재하는 E-mail입니다.");
        }
    }

    if (data.Sucess != undefined) {
        if (data.Sucess == "1") {
            location.href = "Default.aspx";
        }
        else {
            alert("회원가입이 되지 않았습니다.");
        }
    }
}