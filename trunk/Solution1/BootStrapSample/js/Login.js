jQuery(document).ready(function ($) {
    var control = $("#LoginControls");
    var UserID = $("#UserID");
    var UserPwd = $("#UserPwd");
    $("#maqna").click(function () {
        var display = control.css("display");
        if (display == "none") {
            control.css("display", "block");
        }
        else {
            control.css("display", "none");
        }
    });
    $("#btnLogin").click(function () {
        var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

        if (!regExp.test(UserID.val())) {
            alert("유효하지 않은 이메일입니다.");
            UserID.val("");
            UserID.focus();
            return;
        }
        if (!UserID.val() || !UserPwd.val()) {
            alert("아이디 & 비밀번호를 확인해주세요.");
            if (!UserID.val()) {
                UserID.focus();
            }
            if (!UserPwd.val()) {
                UserPwd.focus();
            }
            return;
        }
        var parameter = "&UserId=" + UserID.val();
        parameter += "&PassWd=" + UserPwd.val();
        DoAjaxCall("Login", parameter, "GetDataCallBack", "");
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
//window.fbAsyncInit = function () {
//    FB.init({ appId: '361254127352448', status: true, cookie: true, xfbml: true });
//};

//(function (d) {
//    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
//    if (d.getElementById(id)) { return; }
//    js = d.createElement('script'); js.id = id; js.async = true;
//    js.src = "//connect.facebook.net/en_US/all.js";
//    ref.parentNode.insertBefore(js, ref);
//}(document));

//function facebooklogin() {
//    //페이스북 로그인 버튼을 눌렀을 때의 루틴.  
//    FB.login(function (response) {
//        var fbname;
//        var useremail;
//        var accessToken = response.authResponse.accessToken;
//        FB.api('/me', function (user) {
//            fbname = user.name;
//            userid = user.id;
//            useremail = user.email
//            alert(fbname);  //나중어 얼럿창을 없애야됨
//            alert(userid);
//            alert(useremail);
//        });
//    }, { scope: 'publish_stream,user_likes' });
//}