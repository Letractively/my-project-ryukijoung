/*
작성자 : 이종은
작성일 : 2013.10.20
내용 : 각 화면별로 제공되는 js 파일 입니다.
*/

// 문서 시작 Function 입니다.
$(document).ready(function () {
    GetData();
});

// 데이터 가져오기 Function 입니다.
function GetData() {
    //Select
    DoAjaxCall("SelectIdDup", "", "GetDataCallBack", "");

    //Insert
    //DoAjaxCall("SetDBUpdate", "&parameter1=" + $("#txtparameter1").value + "&parameter2=" + $("#parameter2"), "SetDBUpdateCallBack", "");
}

// 데이터 가져오기 콜백 Function 입니다.
function GetDataCallBack(data) {
    var str = "<table border='1' style='width:500px;'>"
    for (var i = 0; i < data.length; i++) {
        str += "<tr><td>" + data[i].Test1 + "</td>";
        str += "<td>" + data[i].Test2 + "</td>";
        str += "<td>" + data[i].Test3 + "</td>";
        str += "<td>" + data[i].Test4 + "</td>";
        str += "<td>" + data[i].Test5 + "</td></tr>";

    }
    str += "</table>";

    $("#ListData").html(str);
}