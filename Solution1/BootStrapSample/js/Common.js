/*
작성자 : 이종은
작성일 : 2013.10.20
내용 : Ajax통신을 위한 Jquery Function 입니다.
name : 호출할 메서드 이름
callBack : Ajax통신 성공후 콜백 메서드,
data : Insert, Update, 
*/
function DoAjaxCall(name, parameter, callBack, data) {
    $.ajax({
        type: "POST",
        url: "http://localhost:3016/handler/GenericHandler.ashx?name=" + name + parameter,
        dataType : "json",
        data: data,
        success: function (data, textStatus) {
            try {
                var jsonData = eval(data);
                if (jsonData.IsSucess) {
                    eval(callBack + "(jsonData.ResponseData)");
                } 
                else {
                    alert("DB호출: (" + jsonData.IsSucess + ") :" +  jsonData.Message);
                }
            }
            catch (err) {
                alert(err);
            }
        },
        error : function(jqXHR, textStatus, errorThrown) {
            alert("Error: " + errorThrown + " and " + jqXHR + " and " + textStatus);
        }
    });
}

function htmlEscape(str) {
    var ret = String(str)
            .replace(/&/g, '&amp;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#39;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/ /g, '&nbsp;');
    return ret;
}

function htmlUnescape(value) {
    //var ret = String(value)
    //    .replace(/&quot;/g, '"')
    //    .replace(/&#39;/g, "'")
    //    .replace(/&lt;/g, '<')
    //    .replace(/&gt;/g, '>')
    //    .replace(/&amp;/g, '&');

    var ret = String(value)
        .replace(/,quot;/g, '"')
        .replace(/,#39;/g, "'")
        .replace(/,lt;/g, '<')
        .replace(/,gt;/g, '>')
        .replace(/,amp;/g, '&')
        .replace(/,nbsp;/g, ' ');
    return ret;
}

