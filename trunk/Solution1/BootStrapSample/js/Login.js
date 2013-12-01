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
        window.sessionStorage.setItem("Nick", data.UserNickName);
        location.href = "../Default.aspx";
    }
    else {
        alert("아이디 & 비밀번호를 확인해주세요.!");
        $("#UserPwd").val("");
    }
}