var UserExternalID;
var GubunKey;
jQuery(document).ready(function ($) {
    GubunKey = getQuerystring("Gubun")
    switch (GubunKey) {
        case "F":
            facebooklogin();
            break;
        case "T":
            break;
        case "G":
            break;
    }
    $("#btnOk").click(function () {
        alert(UserExternalID);
        return;

        var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

        if (!regExp.test($("#txtEmail").val())) {
            $("#result").val("유효하지 않은 이메일입니다.");
            $("#txtEmail").focus();
            return;
        }

        if ($("#txtNick").val() == "") {
            $("#txtNick").focus();
            return
        }

        var data = {
            UserKey: UserExternalID, Email: ("#txtEmail").val(),
            NickName: $("#txtNick").val()
        };

        DoAjaxCall("Login", "", "GetDataCallBack", data);
    });
});


function GetDataCallBack(data) {
    if (!window.sessionStorage["LoginKey"] && data.Seq != null) {
        window.sessionStorage.setItem("LoginKey", data.Seq);
        window.sessionStorage.setItem("UserId", data.UserId);
        window.sessionStorage.setItem("Nick", data.UserNick);
        location.href = "../Default.aspx";
    }
    else {
        alert("아이디 & 비밀번호를 확인해주세요.!");
        $("#UserPwd").val("");
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
            UserExternalID = user.id;
        });
    }, { scope: 'publish_stream,user_likes' });
}


function getQuerystring(key, default_) {
    if (default_ == null) default_ = "";
    key = key.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regex = new RegExp("[\\?&]" + key + "=([^&#]*)");
    var qs = regex.exec(window.location.href);
    if (qs == null)
        return default_;
    else
        return qs[1];
}