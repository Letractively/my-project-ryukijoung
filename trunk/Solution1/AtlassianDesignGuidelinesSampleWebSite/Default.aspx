<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EDGE" />
    <title>AUI - Flat Pack</title>
    <link rel="icon" type="image/png" href="docs/img/favicon.png" />
    <link rel="stylesheet" href="aui/css/aui-all.css" media="all">
    <!--[if lt IE 9]><link rel="stylesheet" href="aui/css/aui-ie.css" media="all"><![endif]-->
    <!--[if IE 9]><link rel="stylesheet" href="aui/css/aui-ie9.css" media="all"><![endif]-->
    <script src="aui/js/aui-all.js"></script>
    <!--[if lt IE 9]><script src="aui/js/aui-ie.js"></script><![endif]-->
    <link rel="stylesheet" href="docs/css/aui-flatpack-extras.css" media="all" />
    <script src="docs/js/aui-flatpack-extras.js"></script>
</head>
<body id="aui-flatpack" class="aui-layout aui-theme-default aui-page-fixed">
    <form id="form1" runat="server">
        <div id="page">
        <header id="header" role="banner">
            <nav class="aui-header aui-dropdown2-trigger-group" role="navigation">
                <div class="aui-header-inner">
                    <div class="aui-header-primary">
                        <h1 id="logo" class="aui-header-logo aui-header-logo-aui"><a href="index.html"><span class="aui-header-logo-device">AUI</span></a></h1>
                        <ul class="aui-nav">
                            <li><a href="prototype/yourHtmlHere.html">Prototyping blank</a></li>
                            <li><a href="sandbox/index.html">Sandbox</a></li>
                        </ul>
                    </div>
                </div>
                <!-- .aui-header-inner-->


            </nav>
            <!-- .aui-header -->
        </header>
        <!-- #header -->
        <section id="content" role="main">
            <header class="aui-page-header">
                <div class="aui-page-header-inner">
                    <div class="aui-page-header-main intro-header">
                        <h1 id="indexheader">Atlassian User Interface</h1>
                        <p class="subtitle">AUI is a tailor-made frontend library for creating a user interface according to the Atlassian Design Guidelines</p>
                        <!--<a href="https://developer.atlassian.com/display/AUI/AUI+Flat+Pack" class="aui-button big-download">Get the flat pack</a>-->
                    </div>
                    <!-- .aui-page-header-main -->
                </div>
                <!-- .aui-page-header-inner -->
            </header>
            <!-- .aui-page-header -->
            <div class="aui-page-panel aui-intro-page">
                <div class="aui-page-panel-inner">
                    <section class="aui-page-panel-item">
                        <div class="aui-group flatpack-intro">
                            <div class="aui-item">
                                <img src="docs/img/aui.png" alt="" class="introblob" /><h2>About AUI</h2>
                                <p>AUI provides JavaScript, CSS and Soy templates (or markup patterns) for a range of ready-made UI components.</p>
                                <ul>
                                    <li><a href="https://developer.atlassian.com/design/">Atlassian Design Guidelines</a></li>
                                    <li><a href="sandbox/index.html">Sandbox</a></li>
                                    <li><a href="http://developer.atlassian.com/display/AUI">Detailed documentation</a></li>
                                </ul>
                            </div>
                            <div class="aui-item">
                                <img src="docs/img/clipboard.png" alt="" class="introblob" /><h2 id="getting-started">Getting started</h2>
                                <p>Most Atlassian products have AUI installed as a plugin. The flat pack is great for prototyping or deploying in apps which can't load a plugin.</p>
                                <ul>
                                    <li><a href="https://developer.atlassian.com/display/AUI/Getting+Started+with+AUI">Getting started with AUI</a></li>
                                    <li><a href="https://developer.atlassian.com/display/AUI/Tips+for+Implementing+AUI">Tips for implementing AUI</a></li>
                                    <li><a href="https://developer.atlassian.com/display/AUI/AUI+Flat+Pack">Latest flat pack download</a></li>
                                    <li><a href="docs/loading.html">Loading the flat pack</a></li>
                                </ul>
                            </div>
                            <div class="aui-item">
                                <img src="docs/img/questions.png" alt="" class="introblob" /><h2>More information</h2>
                                <p id="license">AUI is open source and bundles several open source libraries; details can be found in <a href="licenses.txt">licenses.txt</a>.</p>
                                <ul>
                                    <li><a href="https://developer.atlassian.com/display/AUI/AUI+Release+Notes">Release Notes</a></li>
                                    <li><a href="https://developer.atlassian.com/display/AUI/AUI+Contributor+Guide">Contributor Guide</a></li>
                                    <li><a href="https://ecosystem.atlassian.net/browse/AUI">Feature requests &amp; bugs</a></li>
                                </ul>
                            </div>
                        </div>
                        <h2 id="avatars">Avatars</h2>
                        <div class="aui-flatpack-example avatars-example">
                            <div class="aui-avatar aui-avatar-xsmall">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/user-avatar-blue-16@2x.png" alt="User Avatar"></div>
                            </div>
                            <div class="aui-avatar aui-avatar-small">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/user-avatar-blue-24@2x.png" alt="User Avatar"></div>
                            </div>
                            <div class="aui-avatar aui-avatar-medium">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/user-avatar-blue-32@2x.png" alt="User Avatar"></div>
                            </div>
                            <div class="aui-avatar aui-avatar-large">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/user-avatar-blue-48@2x.png" alt="User Avatar"></div>
                            </div>
                            <div class="aui-avatar aui-avatar-xxlarge">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/user-avatar-blue-96@2x.png" alt="User Avatar"></div>
                            </div>
                            <div class="aui-avatar aui-avatar-project aui-avatar-small">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/project-avatar-blue-24@2x.png" alt="Project Avatar"></div>
                            </div>
                            <div class="aui-avatar aui-avatar-project aui-avatar-medium">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/project-avatar-blue-32@2x.png" alt="Project Avatar"></div>
                            </div>
                            <div class="aui-avatar aui-avatar-project aui-avatar-large">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/project-avatar-blue-64@2x.png" alt="Project Avatar"></div>
                            </div>
                            <div class="aui-avatar aui-avatar-project aui-avatar-xxlarge">
                                <div class="aui-avatar-inner">
                                    <img src="docs/img/project-avatar-blue-128@2x.png" alt="Project Avatar"></div>
                            </div>
                        </div>
                        <!--<div class="aui-flatpack-example avatars-example">
<div class="aui-avatar aui-avatar-xsmall">
    <div class="aui-avatar-inner">
        <img src="static/img/avatar-16.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-small">
    <div class="aui-avatar-inner">
         <img src="static/img/avatar-24.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-medium">
    <div class="aui-avatar-inner">
         <img src="static/img/avatar-32.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-large">
    <div class="aui-avatar-inner">
         <img src="static/img/avatar-48.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-xxlarge">
    <div class="aui-avatar-inner">
         <img src="static/img/avatar-96.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-project aui-avatar-small">
    <div class="aui-avatar-inner">
        <img src="static/img/project-24.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-project aui-avatar-medium">
    <div class="aui-avatar-inner">
        <img src="static/img/project-32.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-project aui-avatar-large">
    <div class="aui-avatar-inner">
        <img src="static/img/project-48.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-project aui-avatar-xlarge">
    <div class="aui-avatar-inner">
        <img src="static/img/project-64.png"></img>
    </div>
</div>

<div class="aui-avatar aui-avatar-project aui-avatar-xxxlarge">
    <div class="aui-avatar-inner">
        <img src="static/img/project-128.png"></img>
    </div>
</div>
</div>-->
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/avatars.html">Design Guidelines</a></li>
                            <li><a href="sandbox/index.html?component=avatars">Sandbox</a></li>
                        </ul>
                        <h2 id="badges">Badges</h2>
                        <p>Small pieces of extra information within components like Navigation, eg. a count:</p>
                        <div class="aui-flatpack-example badges-example">
                            <span class="aui-badge">1</span>
                            <span class="aui-badge">2</span>
                            <span class="aui-badge">3</span>
                            <span class="aui-badge">4</span>
                            <span class="aui-badge">5</span>
                            <span class="aui-badge">6</span>
                            <span class="aui-badge">7</span>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/pages/viewpage.action?pageId=13633097">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=badges">Sandbox</a></li>
                        </ul>
                        <h2 id="buttons">Buttons</h2>
                        <p>AUI Buttons cover combinations of free standing, grouped, disabled and toggled buttons:</p>
                        <div class="aui-flatpack-example buttons-example">
                            <p>
                                <button class="aui-button aui-button-primary">Primary button</button>
                            </p>

                            <p>
                                <button class="aui-button">Button</button>
                            </p>

                            <p>
                                <a href="http://example.com/" class="aui-button aui-button-link">Link button</a>
                            </p>

                            <p>
                                <button class="aui-button aui-dropdown2-trigger" href="#dropdown2-more" aria-owns="dropdown2-more" aria-haspopup="true" aria-controls="dropdown2-more">Dropdown button</button>
                                <div id="dropdown2-more" class="aui-dropdown2 aui-style-default">
                                    <ul class="aui-list-truncate">
                                        <li><a href="http://example.com/">Menu item 1</a></li>
                                        <li><a href="http://example.com/">Menu item 2</a></li>
                                        <li><a href="http://example.com/">Menu item 3</a></li>
                                    </ul>
                                </div>
                            </p>

                            <p>
                                <button class="aui-button"><span class="aui-icon aui-icon-small aui-iconfont-view">View</span> Icon button</button>
                            </p>

                            <p>
                                <button class="aui-button" aria-disabled="true">Disabled button</button>
                            </p>

                            <p>
                                <button class="aui-button aui-button-subtle"><span class="aui-icon aui-icon-small aui-iconfont-configure">Configure</span> Subtle button</button>
                            </p>

                        </div>
                        <p>Grouped:</p>
                        <div class="aui-flatpack-example">
                            <p class="aui-buttons">
                                <button class="aui-button">Button</button>
                                <button class="aui-button">Button</button>
                                <button class="aui-button">Button</button></p>
                        </div>
                        <p>Sets of grouped buttons can be contained in Toolbar2 for a complete toolbar.</p>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/buttons.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/pages/viewpage.action?pageId=11305172">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=buttons">Sandbox</a></li>
                        </ul>
                        <!--<h2 id="datepicker">Date Picker</h2><input class="aui-date-picker" id="demo-range-always" type="date" max="2012-01-05" min="2011-12-25" /><ul class="links"><li><a href="https://developer.atlassian.com/display/AUI/Date+Picker">Documentation</a></li></ul>-->
                        <h2 id="dropdown2">Dropdown2</h2>
                        <div class="aui-flatpack-example dropdown2-example">
                            <!-- Simple Dropdown - trigger -->
                            <p>
                                <a href="#dwarfers" aria-owns="dwarfers" aria-haspopup="true" class="aui-button aui-dropdown2-trigger aui-style-default">Shipmates</a>
                            </p>
                            <!-- Simple Dropdown - dropdown -->
                            <div id="dwarfers" class="aui-dropdown2 aui-style-default">
                                <ul class="aui-list-truncate">
                                    <li><a href="http://example.com/">Lister</a></li>
                                    <li><a href="http://example.com/">Rimmer</a></li>
                                    <li><a href="http://example.com/">Cat</a></li>
                                    <li><a href="http://example.com/">Kryten</a></li>
                                </ul>
                            </div>
                            <!-- .aui-dropdown2 -->

                            <!-- Dropdown with sections - trigger -->
                            <p>
                                <a href="#red-dwarf-ships" aria-owns="red-dwarf-ships" aria-haspopup="true" class="aui-button aui-dropdown2-trigger aui-style-default">The Crimson Short One</a>
                            </p>
                            <!-- Dropdown with sections - dropdown -->
                            <div id="red-dwarf-ships" class="aui-dropdown2 aui-style-default">
                                <div class="aui-dropdown2-section">
                                    <ul>
                                        <li><a href="#foo">Red Dwarf</a></li>
                                        <li><a href="#foo">Low Red Dwarf</a></li>
                                        <li><a href="#foo">High Red Dwarf</a></li>
                                        <li><a href="#foo">Nanobot Red Dwarf</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <strong>Support Ships</strong>
                                    <ul>
                                        <li><a href="#foo">Starbug</a></li>
                                        <li><a href="#foo">Blue Midget</a></li>
                                        <li><a href="#foo">White Giant</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <strong>Other Ships</strong>
                                    <ul>
                                        <li><a href="#foo">Wildfire</a></li>
                                        <li><a href="#foo">SSS Esperanto</a></li>
                                        <li><a href="#foo">Nova 5</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- .aui-dropdown2 -->

                            <!-- Dropdown with everything - Trigger -->
                            <p>
                                <button href="#dropdown2-all-in" aria-owns="dropdown2-all-in" aria-haspopup="true" class="aui-button aui-dropdown2-trigger">Dropdown with everything</button>
                            </p>
                            <!-- Dropdown with everything - Dropdown -->
                            <div id="dropdown2-all-in" class="aui-dropdown2 aui-style-default">
                                <div class="aui-dropdown2-section">
                                    <ul>
                                        <li><a href="./edit">Edit Issue</a></li>
                                        <li><a class="disabled" title="You don't have permission to edit this issue.">Delete</a></li>
                                        <li><a href="#comment-form">Comment</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <strong>Transitions</strong>
                                    <ul>
                                        <li><a href="./transition?state=1">Start Progress</a></li>
                                        <li><a href="./transition?state=4">Close Issue</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul>
                                        <li><a class="aui-dropdown2-radio interactive checked">Option 1</a></li>
                                        <li><a class="aui-dropdown2-radio interactive">Option 2</a></li>
                                        <li><a class="aui-dropdown2-radio interactive">Option 3</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul>
                                        <li><a class="aui-dropdown2-checkbox interactive">Check Spelling While Typing</a></li>
                                        <li><a class="aui-dropdown2-checkbox interactive checked disabled">Enable Gravity</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul class="aui-list-truncate">
                                        <li>
                                            <a href="http://example.com/" class="aui-icon-container">
                                                <span class="aui-icon aui-icon-small aui-iconfont-view"></span>
                                                Icon span pattern
        </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <script>
                            AJS.$(document).ready(function () {
                                // begin demo javascript    

                                // No javascript required for simple dropdowns.
                                // If required you can programmatically invoke
                                // Dropdown2 using the aui-button-invoke event:
                                // AJS.$("#myDropdown2Trigger").trigger("aui-button-invoke");

                                // end demo javascript    
                            });
</script>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/display/AUI/AUI+Dropdown2">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=dropdown">Sandbox</a></li>
                        </ul>
                        <h3 id="dropdown">Dropdown v1</h3>
                        <p>If you're working with an existing implementation you might encounter the old dropdown as well...</p>
                        <div class="aui-flatpack-example">
                            <div class="html-code">
                                <ul id="dropDown-standard" class="styled-parent">
                                    <li class="aui-dd-parent">
                                        <button class="aui-button aui-dd-trigger" id="dropdown-trigger">This is an old Dropdown</button><ul class="aui-dropdown">
                                            <li class="dropdown-item"><a href="http://www.google.com" class="item-link">Dropdown item</a></li>
                                            <li class="dropdown-item"><a href="http://example.com/" class="item-link">Dropdown item</a></li>
                                            <li class="dropdown-item"><a href="http://example.com/" class="item-link">Dropdown item</a></li>
                                            <li class="dropdown-item"><a href="http://example.com/" class="item-link">Dropdown item</a></li>
                                            <li class="dropdown-item"><a href="http://example.com/" class="item-link">Dropdown item</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <p>Don't make new ones, but you'll still find this workhorse around the place.</p>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/display/AUI/Dropdown+Menu">Documentation</a></li>
                        </ul>
                        <h2 id="dialogs">Dialogs</h2>
                        <div class="aui-flatpack-example dialog-example">
                            <button id="dialog-button" class="aui-button">Show dialog</button>
                        </div>
                        <script>
                            AJS.$(document).ready(function () {
                                // begin demo javascript    

                                //create a dialog 860px wide x 530px high
                                var dialog = new AJS.Dialog({ width: 860, height: 530, id: "example-dialog", closeOnOutsideClick: true });

                                // PAGE 0 (first page)
                                // adds header for first page
                                dialog.addHeader("Dialog - Page 0");

                                // add panel 1
                                dialog.addPanel("Panel 1", "<p>Some content for panel 1.</p>", "panel-body");
                                // You can remove padding with:
                                // dialog.get("panel:0").setPadding(0);

                                // add panel 2 (this will create a menu on the left side for selecting panels within page 0)
                                dialog.addPanel("Panel 2", "<p>Some content for panel 2.</p><div style='height: 2000px;'>(forced-height element to demonstrate scrolling content)</div><p>End.</p>", "panel-body");

                                dialog.addButton("Next", function (dialog) {
                                    dialog.nextPage();
                                });
                                dialog.addLink("Cancel", function (dialog) {
                                    dialog.hide();
                                }, "#");

                                // PAGE 1 (second page)
                                // adds a new page to dialog
                                dialog.addPage();

                                // adds header for second page
                                dialog.addHeader("Dialog - Page 1");

                                // adds a single panel on second page (as there is only one panel, no menu will appear on the left side)
                                dialog.addPanel("SinglePanel", "<p>Some content for the only panel on Page 1</p>", "singlePanel");

                                // add "Previous" button to page 1
                                dialog.addButton("Previous", function (dialog) {
                                    dialog.prevPage();
                                });
                                // adds "Cancel" button to page 1
                                dialog.addButton("Cancel", function (dialog) {
                                    dialog.hide();
                                });

                                // Add events to dialog trigger elements
                                AJS.$("#dialog-button").click(function () {
                                    // PREPARE FOR DISPLAY
                                    // start first page, first panel
                                    dialog.gotoPage(0);
                                    dialog.gotoPanel(0);
                                    dialog.show();
                                });

                                AJS.$("#dialog-link").click(function () {
                                    dialog.gotoPage(0);
                                    dialog.gotoPanel(0);
                                    dialog.show();
                                });

                                // end demo javascript    
                            });
</script>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/modal-dialog.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Dialog">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=dialog">Sandbox</a></li>
                        </ul>
                        <h2 id="forms">Forms</h2>
                        <p>Available in several flavours including compact top-label style, long-label and short-label:</p>
                        <!--<div class="aui-flatpack-example forms-example">
<form action="#" method="post" id="d" class="aui">
    <fieldset>
        <div class="field-group">
            <label for="d-fname">Default field<span class="aui-icon icon-required"> required</span></label>
            <input class="text" type="text" id="d-fname" name="d-fname" title="first name">
            <div class="description">Default width input of a required field</div>
        </div>
        <div class="field-group">
            <label for="d-lname">Long field</label>
            <input class="text long-field" type="text" id="d-lname" name="d-lname" title="last name">
            <div class="error">Error message here</div>
            <div class="description">Long width input</div>
        </div>
        <div class="field-group">
            <label for="d-fname">Short field</label>
            <input class="text short-field" type="text" id="d-fname" name="d-fname" title="first name">
            <div class="description">Short width input</div>
        </div>
        <div class="field-group">
            <label for="d-fname">Disabled field</label>
            <input class="text" type="text" id="d-fname" name="d-fname" title="first name" disabled>
            <div class="description">Disable field input</div>
        </div>
        <div class="field-group">
            <label for="email1">Email</label>
            <input class="text medium-field" type="text" id="email1" name="email" title="email" placeholder="you@example.com">
            <span class="aui-icon icon-help">help</span>
            <div class="description">Medium width input</div>
        </div>
        <div class="field-group">
            <label for="password1" accesskey="p">Password</label>
            <input class="password" type="password" id="password1" name="password" title="password">
        </div>
    </fieldset>

    <h3>Dropdowns and multi select</h3>
    <fieldset>
        <legend><span>Dropdowns and multi select</span></legend>
        <div class="field-group">
            <label for="dBase">Dropdown</label>
            <select class="select" id="dBase" name="dBase" title="database select">
                <option>Select</option>
                <option>Option 1</option>
                <option>Option 2</option>
                <optgroup label="Group 1">
                    <option>Option one</option>
                    <option>Option two</option>
                </optgroup>
                <option>Option 3</option>
                <option>Option 4</option>
            </select>
        </div>
        <div class="field-group">
            <label for="multiselect">Multi select</label>
            <select class="multi-select" size="4" multiple="multiple" id="multiselect" name="multiselect">
                <option>option one</option>
                <option>option two</option>
                <option>option three</option>
                <option>option four</option>
                <option>option five</option>
                <option>option six</option>
            </select>
            <div class="description">Multi select description</div>
        </div>
    </fieldset>

    <h3>Textarea</h3>
    <fieldset>
        <legend><span>Textarea Legend</span></legend>
        <div class="field-group">
            <label for="comment">Comment</label>
            <textarea class="textarea" name="comment" id="comment" placeholder="Your comment here..."></textarea>
        </div>
        <div class="field-group">
            <label for="licenseKey">License key</label>
            <textarea class="textarea" rows="6" cols="10" name="licenseKey" id="licenseKey"></textarea>
        </div>
    </fieldset>
    <div class="buttons-container">
        <div class="buttons">
            <input class="button submit" type="submit" value="Save" id="d-save-btn1">
            <a class="cancel" href="#">Cancel</a>
        </div>
    </div>
                            
    <h3>Radio buttons</h3>
    <fieldset class="group">
        <legend><span>Radio buttons</span></legend>
        <div class="radio">
            <input class="radio" type="radio" checked="checked" name="rads" id="irOne">
            <label for="irOne">Save as a blog post</label>
        </div>
        <div class="radio">
            <input class="radio" type="radio" name="rads" id="irTwo">
            <label for="irTwo">Save as a page</label>
        </div>
        <div class="radio">
            <input class="radio" type="radio" name="rads" id="irTwo">
            <label for="irTwo">Save to your drafts</label>
        </div>
    </fieldset>
                            
    <h3>Checkboxes</h3>
    <fieldset class="group">
        <legend><span>Checkboxes</span></legend>
        <div class="checkbox">
            <input class="checkbox" type="checkbox" name="cbOne" id="cbOne">
            <label for="cbOne">Receive email</label>
        </div>                                
        <div class="checkbox">
            <input class="checkbox" type="checkbox" name="cbTwo" id="cbTwo">
            <label for="cbTwo">Receive push notification</label>
        </div>                                
        <div class="checkbox">
            <input class="checkbox" type="checkbox" name="cbThree" id="cbThree">
            <label for="cbThree">Receive in-app notification</label>
        </div>                                
    </fieldset>
                            
    <h3>File upload</h3>
    <fieldset>
        <legend><span>File upload<span class="aui-icon icon-required"></span></span></legend>
        <div class="field-group">
            <label for="uploadFile">Upload file</label>
            <input class="upfile" type="file" id="uploadFile" name="uploadFile" title="upload file">
        </div>
    </fieldset>
</form>                        
</div>
<script>
AJS.$(document).ready(function(){
// begin demo javascript    

    
// end demo javascript    
});
</script>
-->
                        <div class="aui-flatpack-example">
                            <form action="#" method="post" id="example" class="aui short-label">
                                <div class="field-group">
                                    <label for="example-fname" accesskey="e">First name<span class="aui-icon icon-required"></span><span class="content"> required</span></label><input class="text" type="text" id="example-fname" name="fname" title="first name"><div class="error">Inline error message</div>
                                    <div class="description">Description text to assist users</div>
                                </div>
                                <div class="field-group">
                                    <label for="h-lname" accesskey="e">Last name<span class="aui-icon icon-required"></span><span class="content"> required</span></label><input class="text long-field" type="text" id="h-lname" name="lname" title="last name"></div>
                                <div class="buttons-container">
                                    <div class="buttons">
                                        <input class="button submit" type="submit" value="Save" id="h-save-btn1"><a class="cancel" href="forms.html#">Cancel</a></div>
                                </div>
                            </form>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/forms.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Forms">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=forms">Sandbox</a></li>
                        </ul>
                        <h2 id="icons">Icons</h2>
                        <p>For the full set of icons and sizes, refer to the docs.</p>
                        <div class="aui-flatpack-example icons-example">
                            <p>Vector icons from the icon font:</p>
                            <span class="aui-icon aui-icon-small aui-iconfont-view">View</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-configure">Configure</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-add">Add</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-help">Help</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-search">Search</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-success">Success</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-workbox">Workbox</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-workbox-empty">Workbox (full)</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-email">Email</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-appswitcher">App Switcher</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-edit">Edit</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-share">Share</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-user">User</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-comment">Comment</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-add-comment">Add Comment</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-search-small">Search</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-remove">Remove</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-close-dialog">Close</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-remove-label">Remove Label</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-time">Time</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-error">Error</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-info">Info</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-approve">Approve</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-build">Build</span>
                            <span class="aui-icon aui-icon-small aui-iconfont-jira">JIRA</span>
                            <p>Vector icons also available in large:</p>
                            <span class="aui-icon aui-icon-large aui-iconfont-view">View</span>
                            <span class="aui-icon aui-icon-large aui-iconfont-configure">Configure</span>
                            <span class="aui-icon aui-icon-large aui-iconfont-add">Add</span>

                            <p>Other icons:</p>
                            <span class="aui-icon aui-icon-wait">Wait</span>
                            <span class="aui-icon aui-icon-close">Close</span>
                            <span class="example-inverted-icon"><span class="aui-icon aui-icon-close-inverted">Close</span></span>
                            <span class="aui-icon aui-icon-generic">Generic</span>
                            <span class="aui-icon aui-icon-error">Error</span>
                            <span class="aui-icon aui-icon-info">Info</span>
                            <span class="aui-icon aui-icon-warning">Warning</span>
                            <span class="aui-icon aui-icon-success">Success</span>

                            <p class="sandbox-details">You should adjust the alternative text (the text inside the SPAN element) to suit the meaning and usability of your scenario. If you are using it in a button which has the button's action as visible text, you don't need to duplicate the text inside the icon too. However if you are creating an icon-only control, you should include the alternative text.</p>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/icons.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Icons">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=icons">Sandbox</a></li>
                        </ul>
                        <h2 id="inline-dialogs">Inline Dialog</h2>
                        <p>If you don't need a full modal Dialog, you you can use an Inline Dialog.</p>
                        <div class="aui-flatpack-example inlinedialog-example">
                            <p>
                                <a href="http://example.com/" id="popupLink">Show inline dialog
    </a>
                            </p>
                            <script>
                                AJS.InlineDialog(AJS.$("#popupLink"), 1,
                                    function (content, trigger, showPopup) {
                                        content.css({ "padding": "20px" }).html('<h2>Inline dialog</h2><p>The inline dialog is a wrapper for secondary content/controls to be displayed on user request. Consider this component as displayed in context to the triggering control with the dialog overlaying the page content.</p>');
                                        showPopup();
                                        return false;
                                    }
                                );
</script>
                        </div>
                        <!--<div class="aui-flatpack-example inlinedialog-example">
<button class="aui-button aui-button-subtle" href="#" id="popupLink">
    <span class="aui-icon aui-icon-small aui-iconfont-share">share</span> Show inline dialog
</button>
</div>
<script>
AJS.$(document).ready(function(){
// begin demo javascript    

AJS.InlineDialog(AJS.$("#popupLink"), 1,
    function(content, trigger, showPopup) {
        content.css({"padding":"20px"}).html('<h2>Inline dialog</h2><p>The inline dialog is a wrapper for secondary content/controls to be displayed on user request. Consider this component as displayed in context to the triggering control with the dialog overlaying the page content.</p><button class="aui-button">Done</button></form>');
        showPopup();
        return false;
    }
);

// end demo javascript    
});
</script>
-->
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/inline-dialog.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Inline+Dialog">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=inlineDialog">Sandbox</a></li>
                        </ul>
                        <h2 id="layout">Layout (Group + Item)</h2>
                        <p>Borders and backgrounds added for demonstration purposes only - in production, no borders or backgrounds will be applied.</p>
                        <div class="aui-flatpack-example layout-example">
                            <div class="aui-group">
                                <div class="aui-item">
                                    <p>Evenly spaced item</p>
                                </div>
                                <div class="aui-item">
                                    <p>Evenly spaced item</p>
                                </div>
                                <div class="aui-item">
                                    <p>Evenly spaced item</p>
                                </div>
                                <div class="aui-item">
                                    <p>Evenly spaced item</p>
                                </div>
                            </div>
                            <div class="aui-group aui-group-split">
                                <div class="aui-item">
                                    <p>Split group - first item aligned left.</p>
                                </div>
                                <div class="aui-item">
                                    <p>Split group - second item aligned right.</p>
                                </div>
                            </div>
                            <div class="aui-group aui-group-trio">
                                <div class="aui-item">
                                    <p>Trio group - first item aligned left.</p>
                                </div>
                                <div class="aui-item">
                                    <p>Trio group - second item aligned centre.</p>
                                </div>
                                <div class="aui-item">
                                    <p>Trio group - third item aligned right.</p>
                                </div>
                            </div>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/grid.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/pages/viewpage.action?pageId=1278071">Documentation</a></li>
                        </ul>
                        <h2 id="keyboard-shortcuts">Keyboard Shortcuts (WhenIType)</h2>
                        <p>WhenIType allows you to trigger various events based on keyboard input.</p>
                        <div class="aui-flatpack-example">
                            <p>Type &quot;z&quot; then &quot;e&quot; to execute some simple JavaScript.</p>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/keyboard-shortcuts.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/pages/viewpage.action?pageId=10422224">Documentation</a></li>
                        </ul>
                        <h2 id="labels">Labels</h2>
                        <p>AUI provides a CSS-only Label component - each product's implementation is expected to be different, so no default JS is provided.</p>
                        <div class="aui-flatpack-example">
                            <p role="application" id="P1"><span id="unclickable-label" class="aui-label">unclickableUncloseable</span><a id="clickable-label" class="aui-label" href="http://example.com/">clickable</a><span id="closeable-label-nourl" class="aui-label aui-label-closeable">closableNoUrl<span tabindex="0" class="aui-icon aui-icon-close" title="(remove closableNoUrl)">(remove closableNoUrl)</span></span><span id="split-label" class="aui-label aui-label-closeable aui-label-split"><a class="aui-label-split-main" href="http://example.com/">splitLabel</a><span class="aui-label-split-close"><span tabindex="0" class="aui-icon aui-icon-close" title="(remove splitLabel)">(remove splitLabel)</span></span></span></p>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/labels.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/pages/viewpage.action?pageId=16352183">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=labels">Sandbox</a></li>
                        </ul>
                        <h2 id="lozenges">Lozenges</h2>
                        <p>Standard and Subtle variations:</p>
                        <div class="aui-flatpack-example lozenges-example">
                            <p>
                                <span class="aui-lozenge aui-lozenge-success">success</span>
                                <span class="aui-lozenge aui-lozenge-error">error</span>
                                <span class="aui-lozenge aui-lozenge-current">current</span>
                                <span class="aui-lozenge aui-lozenge-complete">new</span>
                                <span class="aui-lozenge aui-lozenge-moved">moved</span>
                            </p>
                            <p>
                                <span class="aui-lozenge aui-lozenge-subtle aui-lozenge-success">success</span>
                                <span class="aui-lozenge aui-lozenge-subtle aui-lozenge-error">error</span>
                                <span class="aui-lozenge aui-lozenge-subtle aui-lozenge-current">current</span>
                                <span class="aui-lozenge aui-lozenge-subtle aui-lozenge-complete">new</span>
                                <span class="aui-lozenge aui-lozenge-subtle aui-lozenge-moved">moved</span>
                            </p>
                        </div>
                        <script>
                            AJS.$(document).ready(function () {
                                // begin demo javascript    


                                // end demo javascript    
                            });
</script>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/lozenges.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Lozenges">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=lozenges">Sandbox</a></li>
                        </ul>
                        <h2 id="messages">Messages</h2>
                        <div class="aui-flatpack-example messages-example">
                            <h3>Inserted with HTML</h3>
                            <div class="aui-message">
                                <p class="title">
                                    <span class="aui-icon icon-generic"></span>
                                    <strong>Backup stale</strong>
                                </p>
                                <p>This instance was last backed up on Thursday, 18 September 2011.</p>
                            </div>
                            <!-- .aui-message -->

                            <div class="aui-message warning">
                                <p class="title">
                                    <span class="aui-icon icon-warning"></span>
                                    <strong>Backing up attachments</strong>
                                </p>
                                <p>Attachments will not be backed up. This needs to be done manually.</p>
                            </div>
                            <!-- .aui-message -->

                            <div class="aui-message error">
                                <p class="title">
                                    <span class="aui-icon icon-error"></span>
                                    <strong>Destructive operation!</strong>
                                </p>
                                <p>Data import will wipe all existing content - make sure you backup first!</p>
                            </div>
                            <!-- .aui-message -->

                            <div class="aui-message success">
                                <p class="title">

                                    <span class="aui-icon icon-success"></span>
                                    <strong>Success!</strong>
                                </p>
                                <p>You have backed up your system to C:/backups/filename.xml.</p>
                            </div>
                            <!-- .aui-message -->

                            <div class="aui-message hint">
                                <p class="title">
                                    <span class="aui-icon icon-hint "></span>

                                    <strong>Backup stale</strong>
                                </p>
                                <p>This instance was last backed up on Thursday, 18 September 2011.</p>
                            </div>
                            <h3>Inserted with JS</h3>
                            <div id="aui-message-bar"></div>
                            <div id="custom-context"></div>
                        </div>
                        <script>
                            AJS.$(document).ready(function () {
                                // begin demo javascript    

                                AJS.messages.success({
                                    title: "Success!",
                                    body: "You have backed up your system!"
                                });

                                AJS.messages.generic("#custom-context", {
                                    title: "Custom Context Demo",
                                    body: '<p>Because you often need to specify where the message goes.</p>'
                                });

                                // end demo javascript    
                            });
</script>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/messages.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Messages">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=messages">Sandbox</a></li>
                        </ul>
                        <h2 id="progresstracker">Progress Tracker</h2>
                        <div class="aui-flatpack-example">
                            <ol class="aui-progress-tracker">
                                <li class="aui-progress-tracker-step" style="width: 20.0%;"><a href="#step1">Step One</a></li>
                                <li class="aui-progress-tracker-step aui-progress-tracker-step-current" style="width: 20.0%;"><span>Step Two</span></li>
                                <li class="aui-progress-tracker-step" style="width: 20.0%;"><span>Step Three</span></li>
                                <li class="aui-progress-tracker-step" style="width: 20.0%;"><span>Step Four</span></li>
                                <li class="aui-progress-tracker-step" style="width: 20.0%;"><span>Step Five</span></li>
                            </ol>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/progress-tracker.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/pages/viewpage.action?pageId=16974301">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=progressTracker">Sandbox</a></li>
                        </ul>
                        <h2 id="navigation">Navigation</h2>
                        <p>AUI has a core set of navigation elements, which are most commonly used in Horizontal and Vertical navgroups.</p>
                        <h3 id="navigation-horizontal">Horizontal Navigation</h3>
                        <p>Should be placed immediately before <code>.aui-page-panel</code></p>
                        <div id="aui-hnav-example" class="aui-flatpack-example">
                            <nav class="aui-navgroup aui-navgroup-horizontal">
                                <div class="aui-navgroup-inner">
                                    <div class="aui-navgroup-primary">
                                        <ul class="aui-nav">
                                            <li><a href="http://example.com/">Nav item</a></li>
                                            <li class="aui-nav-selected"><a href="http://example.com/">Selected nav item</a></li>
                                            <li><a href="http://example.com/">Nav item <span class="aui-badge">123</span></a></li>
                                            <li><a href="#dropdown2-nav1" aria-owns="dropdown2-nav1" aria-haspopup="true" class="aui-dropdown2-trigger">Dropdown <span class="aui-icon-dropdown"></span></a></li>
                                            <li><a href="http://example.com/">Nav item</li>
                                            <li><a href="http://example.com/">Nav item</a></li>
                                        </ul>
                                    </div>
                                    <!-- .aui-navgroup-primary -->
                                    <div class="aui-navgroup-secondary">
                                        <ul class="aui-nav">
                                            <li><a href="#dropdown2-nav1" aria-owns="dropdown2-nav1" aria-haspopup="true" class="aui-dropdown2-trigger"><span class="aui-icon aui-icon-small aui-iconfont-configure">Configure</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- .aui-navgroup-secondary -->
                                </div>
                                <!-- .aui-navgroup-inner -->
                            </nav>
                            <!-- .aui-navgroup -->
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/horizontal-navigation.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Navigation">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=horizontalNav">Sandbox</a></li>
                        </ul>
                        <h3 id="navigation-vertical">Vertical Navigation</h3>
                        <p>Usually placed inside an <code>.aui-page-panel-nav</code> but will expand horizontally to fit any appropriate container element.</p>
                        <div id="aui-vnav-example" class="aui-flatpack-example">
                            <nav class="aui-navgroup aui-navgroup-vertical">
                                <div class="aui-navgroup-inner">
                                    <ul class="aui-nav">
                                        <li class="aui-nav-selected"><a href="http://example.com/">Selected Nav Item</a></li>
                                        <li><a href="http://example.com/">Nav item</a></li>
                                        <li><a href="http://example.com/">Nav item</a></li>
                                    </ul>
                                    <ul class="aui-nav">
                                        <li><a href="http://example.com/">Nav item</a></li>
                                        <li><a href="http://example.com/">Nav item</a></li>
                                    </ul>
                                    <ul class="aui-nav">
                                        <li><a href="http://example.com/">Nav item</a></li>
                                        <li><a href="http://example.com/">Nav item</a></li>
                                    </ul>
                                    <div class="aui-nav-heading"><strong>Heading</strong></div>
                                    <ul class="aui-nav">
                                        <li><a href="http://example.com/">Nav item</a></li>
                                        <li><a href="http://example.com/">Nav item</a></li>
                                        <li><a href="http://example.com/">Nav item</a></li>
                                        <li><a href="http://example.com/">Nav item</a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/vertical-navigation.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Navigation">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=verticalNav">Sandbox</a></li>
                        </ul>
                        <h2 id="H1">Page</h2>
                        <h3>Page Layouts</h3>
                        <p>The AUI Page component sets up the whole-page layout, with several options:</p>
                        <table class="aui page-layout-options" id="page-options">
                            <thead>
                                <tr>
                                    <th id="page-default">Fluid (default)</th>
                                    <th id="page-fixed">Fixed</th>
                                    <th id="page-hybrid">Hybrid</th>
                                    <th id="page-focused">Focused Task</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <img src="docs/img/example-layout-fluid.png" alt="Diagram showing page with fluid width header, content and footer." /></td>
                                    <td>
                                        <img src="docs/img/example-layout-fixed.png" alt="Diagram showing page with fixed width header, content and footer." /></td>
                                    <td>
                                        <img src="docs/img/example-layout-hybrid.png" alt="Diagram showing page with fluid width header and footer, but fixed width content." /></td>
                                    <td>
                                        <img src="docs/img/example-layout-focusedtask.png" alt="Diagram showing page with narrow content area." /></td>
                                </tr>
                            </tbody>
                        </table>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/application-header.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/pages/viewpage.action?pageId=1278003">Documentation</a></li>
                        </ul>
                        <h3>Content Layouts</h3>
                        <p>Within page layouts, there is a dedicated pattern for setting up the content's layout.</p>
                        <table class="aui page-layout-options" id="content-layout-options">
                            <thead>
                                <tr>
                                    <th>Content Only</th>
                                    <th>Nav + Content</th>
                                    <th>Content + Sidebar</th>
                                    <th>Nav + Content + Sidebar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <img src="docs/img/example-layout-contentonly.png" alt="Diagram showing content area with no extra columns." /></td>
                                    <td>
                                        <img src="docs/img/example-layout-navcontent.png" alt="Diagram showing content area with navigation and content." /></td>
                                    <td>
                                        <img src="docs/img/example-layout-contentsidebar.png" alt="Diagram showing content area with content and a sidebar." /></td>
                                    <td>
                                        <img src="docs/img/example-layout-navcontentsidebar.png" alt="Diagram showing content area with navigation, content and sidebar." /></td>
                                </tr>
                            </tbody>
                        </table>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/layout.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Page+-+Content+Layout">Documentation</a></li>
                        </ul>
                        <h2 id="pageheader">Page Header</h2>
                        <div id="pageheader-example" class="aui-flatpack-example">
                            <header class="aui-page-header">
                                <div class="aui-page-header-inner">
                                    <div class="aui-page-header-image">
                                        <div class="aui-avatar aui-avatar-xlarge aui-avatar-project">
                                            <div class="aui-avatar-inner">
                                                <img src="docs/img/project-avatar-blue-64@2x.png" alt="Project Name"></div>
                                        </div>
                                    </div>
                                    <div class="aui-page-header-main">
                                        <ol class="aui-nav aui-nav-breadcrumbs">
                                            <li><a href="http://example.com/">Breadcrumbs</a></li>
                                            <li><a href="http://example.com/">Sub-page</a></li>
                                            <li class="aui-nav-selected">Direct parent page</li>
                                        </ol>
                                        <h1>Page header with avatar, breadcrumbs and actions</h1>
                                    </div>
                                    <div class="aui-page-header-actions">
                                        <div class="aui-buttons">
                                            <button class="aui-button">Action</button>
                                            <button class="aui-button">Action</button>
                                            <button class="aui-button">Action</button></div>
                                    </div>
                                </div>
                            </header>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/page-header.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/AUI+5.0%3A+Page+Header+migration+guide">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=pageHeader">Sandbox</a></li>
                        </ul>
                        <h2 id="tabs">Tabs</h2>
                        <h3 id="horizontal-tabs">Horizontal Tabs</h3>
                        <div class="aui-flatpack-example">
                            <div class="aui-tabs horizontal-tabs" id="tabs-example">
                                <ul class="tabs-menu">
                                    <li class="menu-item active-tab"><a href="#tabs-example-first"><strong>Tab 1</strong></a></li>
                                    <li class="menu-item"><a href="#tabs-example-second"><strong>Tab 2</strong></a></li>
                                    <li class="menu-item"><a href="#tabs-example-third"><strong>Tab 3</strong></a></li>
                                </ul>
                                <div class="tabs-pane active-pane" id="tabs-example-first">
                                    <h2>Tab 1</h2>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                </div>
                                <div class="tabs-pane" id="tabs-example-second">
                                    <h2>Tab 2</h2>
                                    <p>The trigger text is fairly long, but we have enough room so it's all good...</p>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                </div>
                                <div class="tabs-pane" id="tabs-example-third">
                                    <h2>Tab 3</h2>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                </div>
                            </div>
                            <!-- .aui-tabs -->
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/tabs.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Tabs">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=tabs">Sandbox</a></li>
                        </ul>
                        <h3 id="vertical-tabs">Vertical Tabs</h3>
                        <div class="aui-flatpack-example">
                            <div class="aui-tabs vertical-tabs" id="tabs-example2">
                                <ul class="tabs-menu">
                                    <li class="menu-item active-tab"><a href="#tabs-example2-first"><strong>Tab 1</strong></a></li>
                                    <li class="menu-item"><a href="#tabs-example2-second"><strong>Tab 2</strong></a></li>
                                    <li class="menu-item"><a href="#tabs-example2-third"><strong>Tab 3</strong></a></li>
                                </ul>
                                <div class="tabs-pane active-pane" id="tabs-example2-first">
                                    <h2>Tab 1</h2>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                </div>
                                <div class="tabs-pane" id="tabs-example2-second">
                                    <h2>Tab 2</h2>
                                    <p>The trigger text is fairly long, but we have enough room so it's all good...</p>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                </div>
                                <div class="tabs-pane" id="tabs-example2-third">
                                    <h2>Tab 3</h2>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                    <p>Quidquid latine dictum sit, altum viditur. Sentio aliquos togatos contra me conspirare.</p>
                                </div>
                            </div>
                            <!-- .aui-tabs -->
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/tabs.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Tabs">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=tabs">Sandbox</a></li>
                        </ul>
                        <h2 id="tables">Tables</h2>
                        <p>Just add <code>class=&quot;aui&quot;</code> to your tables (for tabular data, never layout!). Follow correct structure - include THEAD and TBODY, use TH for headers and TD for body:</p>
                        <div class="aui-flatpack-example">
                            <table class="aui" id="ships">
                                <thead>
                                    <tr>
                                        <th id="ships-name">Ship Name</th>
                                        <th id="ships-nickname">Nickname</th>
                                        <th id="ships-type">Type</th>
                                        <th id="ships-misadventure">Misadventure</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td headers="ships-name">Red Dwarf</td>
                                        <td headers="ships-nickname">The Crimson Short One</td>
                                        <td headers="ships-type">JMC mining vessel</td>
                                        <td headers="ships-misadventure">Duplicated, shrunk, lost, found, rebuilt by nanobots.</td>
                                    </tr>
                                    <tr>
                                        <td headers="ships-name">Starbug</td>
                                        <td headers="ships-nickname">The Bug</td>
                                        <td headers="ships-type">JMC transport shuttle</td>
                                        <td headers="ships-misadventure">Crashed multiple times, shot at, sunk.</td>
                                    </tr>
                                    <tr>
                                        <td headers="ships-name">Nova 5</td>
                                        <td headers="ships-nickname">Not known</td>
                                        <td headers="ships-type">Coca-Cola marketing vessel</td>
                                        <td headers="ships-misadventure">Crashed with soapy mainframe.</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/tables.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/Tables">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=tables">Sandbox</a></li>
                        </ul>
                        <h2 id="toolbar">Toolbar2</h2>
                        <div id="toolbar2-example" class="aui-flatpack-example toolbar2-example">
                            <div class="aui-toolbar2">
                                <div class="aui-toolbar-2-inner">
                                    <div class="aui-toolbar2-primary">
                                        <div id="button-set" class="aui-buttons">
                                            <button class="aui-button aui-button-primary">Edit</button>
                                        </div>
                                        <div id="button-set1" class="aui-buttons">
                                            <button class="aui-button">Assign</button>
                                            <button class="aui-button">Assign to me</button>
                                            <button class="aui-button">Comment</button>
                                            <button class="aui-button aui-dropdown2-trigger" href="#dropdown2-more" aria-owns="dropdown2-more" aria-haspopup="true" aria-controls="dropdown2-more" data-container="#button-set1">More</button>
                                        </div>
                                    </div>
                                    <div class="aui-toolbar2-secondary">
                                        <div id="button-set2" class="aui-buttons">
                                            <button class="aui-button aui-dropdown2-trigger" href="#dropdown2-view" aria-owns="dropdown2-view" aria-haspopup="true" aria-controls="dropdown2-view" data-container="#button-set2"><span class="aui-icon aui-icon-small aui-iconfont-view">View</span></button>
                                        </div>
                                    </div>
                                </div>
                                <!-- .aui-toolbar-inner -->
                            </div>

                            <div id="Div1" class="aui-dropdown2 aui-style-default" data-dropdown2-alignment="left">
                                <div class="aui-dropdown2-section">
                                    <ul class="aui-list-truncate">
                                        <li><a href="#" class="active">Agile board</a></li>
                                        <li><a href="#">Rank to top</a></li>
                                        <li><a href="#">Rank to bottom</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul class="aui-list-truncate">
                                        <li><a href="#">Log work</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul class="aui-list-truncate">
                                        <li><a href="#">Attach files</a></li>
                                        <li><a href="#">Attach screenshot</a></li>
                                        <li><a href="#">Add/Edit UI mockup</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul class="aui-list-truncate">
                                        <li><a href="#">Voters</a></li>
                                        <li><a href="#">Watch issue</a></li>
                                        <li><a href="#">Watchers</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul class="aui-list-truncate">
                                        <li><a href="#">Create sub-task</a></li>
                                        <li><a href="#">Convert to sub-task</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul class="aui-list-truncate">
                                        <li><a href="#">Move</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Clone</a></li>
                                        <li><a href="#">Labels</a></li>
                                        <li><a href="#">Create test session</a></li>
                                    </ul>
                                </div>
                                <div class="aui-dropdown2-section">
                                    <ul class="aui-list-truncate">
                                        <li><a href="#">Delete</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div id="dropdown2-view" class="aui-dropdown2 aui-style-default" data-dropdown2-alignment="right">
                                <ul class="aui-list-truncate">
                                    <li><a href="#" class="active">XML</a></li>
                                    <li><a href="#" class="">Word</a></li>
                                    <li><a href="#" class="">Print version</a></li>
                                </ul>
                            </div>
                        </div>
                        <script>
                            AJS.$(document).ready(function () {
                                // begin demo javascript    


                                // end demo javascript    
                            });
</script>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/design/toolbar.html">Design Guidelines</a></li>
                            <li><a href="https://developer.atlassian.com/display/AUI/AUI+Toolbar2">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=toolbar">Sandbox</a></li>
                        </ul>
                        <h3>Old Toolbar (v1)</h3>
                        <p>Don't make new ones, but you may need to update a v1 Toolbar:</p>
                        <div class="aui-flatpack-example">
                            <div id="demo-toolbar" class="aui-toolbar">
                                <div class="toolbar-split toolbar-split-left">
                                    <!-- Active/Inactive Button -->
                                    <ul class="toolbar-group">
                                        <li class="toolbar-item"><a class="toolbar-trigger example-click" href="http://example.com/" id="toolbar-button1" title="Active">Button 1</a></li>
                                        <li class="toolbar-item"><a class="toolbar-trigger example-click" href="http://example.com/" id="toolbar-button2" title="Active">Button 2</a></li>
                                        <li class="toolbar-item"><a class="toolbar-trigger example-click" href="http://example.com/" id="toolbar-button3" title="Active">Button 3</a></li>
                                    </ul>
                                    <!-- Active/Inactive Button -->
                                    <ul class="toolbar-group">
                                        <li class="toolbar-item"><a class="toolbar-trigger example-click" href="http://example.com/" id="active-button" title="Active">Active</a></li>
                                        <li class="toolbar-item disabled"><a class="toolbar-trigger example-click" href="http://example.com/" id="disabled-button" title="Disabled">Disabled</a></li>
                                    </ul>
                                    <!-- Text Dropdown -->
                                    <ul class="toolbar-group">
                                        <li class="toolbar-item toolbar-dropdown" id="format-dropdown">
                                            <div class="aui-dd-parent"><a href="http://example.com/" class="toolbar-trigger aui-dd-trigger" id="A1"><span class="dropdown-text">Dropdown</span><span class="icon icon-dropdown"></span></a><ul class="aui-dropdown">
                                                <li class="dropdown-item"><a href="http://example.com/" class="item-link">Drodpown Item 1</a></li>
                                                <li class="dropdown-item"><a href="http://example.com/" class="item-link">Drodpown Item 2</a></li>
                                                <li class="dropdown-item"><a href="http://example.com/" class="item-link">Drodpown Item 3</a></li>
                                            </ul>
                                            </div>
                                        </li>
                                    </ul>
                                    <!-- Compact Dropdown -->
                                    <ul class="toolbar-group">
                                        <li class="toolbar-item toolbar-splitbutton" id="action-1b"><a class="toolbar-trigger" href="http://example.com/" id="action-1a" title="Action One A">Split Button</a><div class="aui-dd-parent"><a class="toolbar-trigger aui-dd-trigger" href="http://example.com/" title="Action One B"><span class="icon icon-dropdown">Action 1b</span></a><ul class="aui-dropdown">
                                            <li class="dropdown-item"><a href="http://example.com/" class="item-link">Drodpown Item 1</a></li>
                                            <li class="dropdown-item"><a href="http://example.com/" class="item-link">Drodpown Item 2</a></li>
                                            <li class="dropdown-item"><a href="http://example.com/" class="item-link">Drodpown Item 3</a></li>
                                        </ul>
                                        </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="toolbar-split toolbar-split-right">
                                    <!-- Active/Inactive Button -->
                                    <ul class="toolbar-group">
                                        <li class="toolbar-item"><a class="toolbar-trigger example-click" href="http://example.com/" id="save-button">Save</a></li>
                                    </ul>
                                    <!-- Link style button -->
                                    <ul class="toolbar-group">
                                        <li class="toolbar-item toolbar-item-link"><a href="http://example.com/" class="toolbar-trigger example-click" id="cancel-button">Cancel</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/display/AUI/Toolbar">Documentation</a></li>
                        </ul>
                        <h2 id="tooltips">Tooltips</h2>
                        <div id="tooltips-example" class="aui-flatpack-example">
                            <a id="simple-tooltip" href="http://example.com/" title="Tooltip text">This has a simple tooltip</a>
                        </div>
                        <script>
                            AJS.$(document).ready(function () {
                                // begin demo javascript    

                                AJS.$("#simple-tooltip").tooltip({ aria: true });

                                // end demo javascript    
                            });
</script>
                        <ul class="links">
                            <li><a href="https://developer.atlassian.com/display/AUI/Tooltips">Documentation</a></li>
                            <li><a href="sandbox/index.html?component=tooltips">Sandbox</a></li>
                        </ul>
                    </section>
                    <!-- .aui-page-panel-item -->
                </div>
                <!-- .aui-page-panel-inner -->
            </div>
            <!-- .aui-page-panel -->
        </section>
        <!-- #content -->
        <footer id="footer" role="contentinfo">
            <section class="footer-body">
                <ul id="aui-footer-list">
                    <!--<li>I &hearts; AUI</li>-->
                    <li>Copyright &copy; 2009-2012 Atlassian</li>
                    <li><a href="https://developer.atlassian.com/display/AUI/License">Apache License v2.0</a></li>
                    <li><a href="https://developer.atlassian.com/display/AUI">Documentation</a></li>
                </ul>
            </section>
        </footer>
        <!-- #footer -->
    </div>
    </form>
</body>
</html>
