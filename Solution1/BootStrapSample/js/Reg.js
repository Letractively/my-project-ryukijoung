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
                GetData("IdDup", parameter);
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

        GetData("UserReg", parameter, "1");
    });
});

// 데이터 가져오기 Function 입니다.
function GetData(spname, data, Gubn) {
    //Select
    if (Gubn == "1") {
        DoAjaxCall(spname, data, "GetDataCallBack", "");
    }
    else if (Gubn == "2") {
        DoAjaxCall(spname, data, "GetDataCallBackFaceBookLogin", "");
    }
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
            location.href = "../Default.aspx";
        }
        else {
            alert("회원가입이 되지 않았습니다.");
        }
    }
}

//페이스북 SDK 초기화   
window.fbAsyncInit = function () {
    FB.init({ appId: '361254127352448', status: true, cookie: true, xfbml: true });
};

(function (d) {
    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
    if (d.getElementById(id)) { return; }
    js = d.createElement('script'); js.id = id; js.async = true;
    js.src = "//connect.facebook.net/en_US/all.js";
    ref.parentNode.insertBefore(js, ref);
}(document));

function facebooklogin() {
    //페이스북 로그인 버튼을 눌렀을 때의 루틴.  
    FB.login(function (response) {
        var accessToken = response.authResponse.accessToken;
        FB.api('/me', function (user) {
            alert(user.name);  //나중에 얼럿창을 없애야됨
            alert(user.id);

            var parameter = "&UserDKey=" + user.id();
            parameter += "&UsersDGugn=" + "F"; //페이스북에서 회원 가입한거임

            GetData("UsersSignUp", parameter, "2");

        });
    }, { scope: 'publish_stream,user_likes' });
}

function GetDataCallBackFaceBookLogin(data) {
    alert("GetDataCallBackFaceBookLogin 잘 들어 왔음");
    if (data.Column1 != "undefined") {
        alert("모름");    //없다면 페이스북 회원 가입 화면으로 
        location.href = "../WhatTheFuck!!.aspx";
    }
    else {
        alert("이미 회원가입이 되어 있습니다. 로그인 해주세요"); //
        location.href = "../WhatTheFuck!!.aspx";
    }

}


//구글 로그인 성공후 콜백 함수
function signinCallback(authResult) {
    if (authResult['access_token']) {
        // 승인 성공
        // 사용자가 승인되었으므로 로그인 버튼 숨김. 예:
        alert("성공");
        alert(authResult['id_token']);
        document.getElementById('signinButton').setAttribute('style', 'display: none');
    } else if (authResult['error']) {
        // 오류가 발생했습니다.
        // 가능한 오류 코드:
        //   "access_denied" - 사용자가 앱에 대한 액세스 거부
        //   "immediate_failed" - 사용자가 자동으로 로그인할 수 없음
         console.log('오류 발생: ' + authResult['error']);

    }
}