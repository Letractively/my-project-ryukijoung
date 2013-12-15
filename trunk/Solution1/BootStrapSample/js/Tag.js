function GetTagList() {
    //var data = { '' : };
    //DoAjaxCall('GetTagList', '', 'GetTagListCallBack', data);
}

function GetTagListCallBack(data) {

}

function SetTagItem() {
    var tagNm = $("#TagNm");
    var userNm = window.sessionStorage.getItem("LoginKey");
    var gubn = $("#TagGubn").val();
    var simpleDec = htmlEscape(CKEDITOR.instances.SimpleEditor.getData());
    var TagDec = htmlEscape(CKEDITOR.instances.TagDecEditor.getData());

    if (!tagNm.val()) {
        tagNm.focus();
        return;
    }
    if (!gubn) {
        $("#TagGubn").focus();
        return;
    }

    var data = {
        'TagName': tagNm.val(), 'Nick': userNm
            , 'TagGubn': gubn, 'sample': simpleDec, 'TagDec': TagDec
    };
    DoAjaxCall('SetTag', '', 'GetTagSucessCallBack', data);
}

function GetTagSucessCallBack(data) {
    location.href = '../Tag/TagView.aspx';
}