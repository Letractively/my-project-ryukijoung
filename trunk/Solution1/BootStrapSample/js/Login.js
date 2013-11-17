jQuery(document).ready(function ($) {
    var control = $("#LoginControls");
    $("#maqna").click(function () {
        var display = control.css("display");
        if (display == "none") {
            control.css("display", "block");
        }
        else {
            control.css("display", "none");
        }
    });
});
