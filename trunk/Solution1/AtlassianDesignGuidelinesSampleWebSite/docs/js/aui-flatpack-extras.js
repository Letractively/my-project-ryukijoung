AJS.$(document).ready(function(){

    // Quick version awareness, to avoid having to double-process the soy.
    AJS.$("#indexheader").append('<span class="aui-lozenge aui-lozenge-current">' + AJS.version + '</span>');
    AJS.$("#aui-footer-list").append("<li>Version: " + AJS.version + "</li>");

/**
 * Keyboard shortcuts
 */
    AJS.whenIType("ze").execute(function () {
        alert("You typed z then e.");
    });

/**
 * Date Picker
 */
    // AJS.$('#demo-range-always').datePicker({'overrideBrowserDefault': true});

/**
 * Dropdown1
 */
    AJS.$("#dropDown-standard").dropDown("Standard", {alignment: "right"});

/**
 * Tooltips
 */
    AJS.$("#clickable-label, #split-label .aui-label-split-main").on("click", function(event){
        alert("Having activated the main area of linked label, user should be taken to related content.");
        return false;
    });

    // In this simple example, "click" is enough but you should always ensure keyboard shortcuts work
    AJS.$(".aui-label .aui-icon-close").on("click", function(event){
        alert("When the user activates the close icon area of a label, the entire label should be removed.");
        AJS.$(".tipsy").remove();
        AJS.$(this).closest(".aui-label").remove();
        return false;
    });

    var needsTooltip = AJS.$(".aui-label [title]");
    needsTooltip.tooltip({"trigger": "hover", "offset":4, "aria": true, "delayIn": 0, "delayOut": 0, "fade": false, "opacity": 1 });
    needsTooltip.tooltip({"trigger": "focus", "offset":4, "aria": true, "delayIn": 0, "delayOut": 0, "fade": false, "opacity": 1 });

/**
 * Preventing default for examples. Red Dwarf namespace required ;)
 */
    AJS.$("#format-dropdown").dropDown("Standard", {alignment: "left"});
    AJS.$(".example-click").click(function() {  alert('Clicked!'); return false; });
    AJS.$("#action-1a").click(function() {  alert('Clicked! The split button\'s main trigger works separately from its dropdown.'); return false; });
    AJS.$("#action-1b").dropDown("Standard", {alignment: "right"});

    AJS.$(".aui-dropdown2 a").click(function(e) {
        alert('It\'s cold outside, there\'s no kind of atmosphere,\nI\'m all alone, more or less,\nLet me fly, far away from here,\nFun, fun, fun, in the sun, sun, sun...\nI want to lie shipwrecked and comatose,\nDrinking fresh mango juice,\nGoldfish shoals, nibbling at my toes,\nFun, fun, fun, in the sun, sun, sun...\nFun, fun, fun, in the sun, sun, sun...');
        e.preventDefault();
        return false;
    });
    AJS.$(".item-link, #simple-tooltip").click(function(e) {
        alert("Smoke me a kipper, I'll be back for breakfast.");
        e.preventDefault();
        return false;
    });
    AJS.$(".cancel").click(function(e) {
        alert("Rude alert! Rude alert! An electrical fire has knocked out my voice recognition unicycle! Many Wurlitzers are missing from my database. Abandon shop! This is not a daffodil. Repeat: This is not a daffodil.");
        e.preventDefault();
        return false;
    });

    AJS.$("#example").submit(function(e) {
        alert("The phrase \"open cargo bay doors\" does not appear to be in my mexican.");
        e.preventDefault();
        return false;
    });

    AJS.$(".buttons-example .aui-button:not([aria-disabled='true']):not(.aui-dropdown2-trigger)").click(function(e) {
        alert("We'll rescue these fair blooms or my name's not Captain A.J. Rimmer, Space Adventurer.");
        e.preventDefault();
        return false;
    });

    AJS.$(".buttons-example .aui-button[aria-disabled='true']").click(function(e) {
        alert("They're dead, Dave.");
        e.preventDefault();
        return false;
    });

    AJS.$(".aui-buttons .aui-button:not(.aui-dropdown2-trigger)").click( function(e){
        var pressed = AJS.$(this).attr("aria-pressed");
        if (pressed == "true") {
            AJS.$(this).attr("aria-pressed", false);
        } else {
            AJS.$(this).attr("aria-pressed", true);
        }
        return false;
    });

    AJS.$("#aui-hnav-example a, #aui-vnav-example a").click(function(e) {
        alert("When in Rome, do as the Snamor do!");
        e.preventDefault();
        return false;
    });




    /**
     * flatPackDownload
     * Creates a link to the flatpack zip, based on current version. Will not link to SNAPSHOT as that won't be on the server.
     *
     * targetSelector       jQuery selector of the element to append a download link.
     * extraClass           Extra class for the download link.
     */
    flatPackDownload = function(options) {
        var targetSelector = options.targetSelector || "body",
            extraClass = options.extraClasses || false,
            version = AJS.version,
            isLocal = (window.location.protocol == 'file:'),
            isSnapshot = (version.toLowerCase().indexOf("snapshot") >= 0),
            downloadURL = 'https://maven.atlassian.com/content/groups/public/com/atlassian/aui/aui-flat-pack/' + version + '/aui-flat-pack-' + version + '.zip',
            downloadLink = AJS.$('<a class="aui-button">Download Flat Pack v' + version+ '</a>');

        // AJS.log("version: " + version);
        // AJS.log("isLocal: " + isLocal);
        // AJS.log("isSnapshot: " + isSnapshot);
        // AJS.log("downloadURL: " + downloadURL);

        if ( !isSnapshot && !isLocal ) {
            downloadLink.attr("href", downloadURL);
            if (extraClasses) {
                downloadLink.addClass(extraClass);
            }
            AJS.$(targetSelector).append(downloadLink);
        }

    };
    // not used yet, will set up in later release
    // flatPackDownload();

});