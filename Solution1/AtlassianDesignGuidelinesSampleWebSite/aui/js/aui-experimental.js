/*! AUI Flat Pack - version 5.1-m1 - generated 2013-02-25 00:17:16 -0500 */


(function(g){var e=g(document),j=(AJS.$.browser.msie&&parseInt(AJS.$.browser.version,10)==8);var c=null;var b=(function(){var n=false;function l(q){if(!n&&q.which===1){n=true;e.bind("mouseup mouseleave",m);g(this).trigger("aui-button-invoke")}}function m(){e.unbind("mouseup mouseleave",m);setTimeout(function(){n=false},0)}function p(){if(!n){g(this).trigger("aui-button-invoke")}}function o(q){q.preventDefault()}if(typeof document.addEventListener==="undefined"){return{click:p,"click selectstart":o,mousedown:function(s){l.call(this,s);var t=this;var r=document.activeElement;if(r!==null){r.attachEvent("onbeforedeactivate",q);setTimeout(function(){r.detachEvent("onbeforedeactivate",q)},0)}function q(u){switch(u.toElement){case null:case t:case document.body:case document.documentElement:u.returnValue=false}}}}}return{click:p,"click mousedown":o,mousedown:l}})();var a={"aui-button-invoke":function(H,r){r=g.extend({selectFirst:true},r);var o=i(this);var n=g(this).addClass("active");var R=n.hasClass("aui-dropdown2-sub-trigger");var M=o.parent()[0];var P=o.next()[0];var D=g(this).attr("data-dropdown2-hide-location");if(D){var z=document.getElementById(D);if(z){M=g(z);P=undefined}else{throw new Error("The specified data-dropdown2-hide-location id doesn't exist")}}var t=r.$menu||n.closest(".aui-dropdown2-trigger-group");if(R){var E=n.closest(".aui-dropdown2");o.addClass(E.attr("class")).addClass("aui-dropdown2-sub-menu")}var s={click:function(T){var S=g(this);if(!p(S)){return}if(!S.hasClass("interactive")){L()}if(v(S)){F(S,{selectFirst:false});T.preventDefault()}},mousemove:function(){var T=g(this);var S=u(T);if(S){F(T,{selectFirst:false})}}};var N={"click focusin mousedown":function(S){var T=S.target;if(!d(T,o[0])&&!d(T,n[0])){L()}},keydown:function(U){if(U.shiftKey&&U.keyCode==9){J(-1)}else{switch(U.keyCode){case 13:var T=y();if(v(T)){F(T)}else{k(T[0])}break;case 27:A();break;case 37:var T=y();if(v(T)){var S=i(T);if(S.is(":visible")){o.trigger("aui-dropdown2-step-out");return}}if(R){A()}else{Q(-1)}break;case 38:J(-1);break;case 39:var T=y();if(v(T)){F(T)}else{Q(1)}break;case 40:J(1);break;case 9:J(1);break;default:return}}U.preventDefault()}};function C(S,T){S.each(function(){var U=g(this);U.attr("role",T);if(U.hasClass("checked")){U.attr("aria-checked","true");if(T=="radio"){U.closest("ul").attr("role","radiogroup")}}else{U.attr("aria-checked","false")}})}n.attr("aria-controls",n.attr("aria-owns"));if(j){o.removeClass("aui-dropdown2-tailed")}o.find(".disabled").attr("aria-disabled","true");o.find("li.hidden > a").addClass("disabled").attr("aria-disabled","true");C(o.find(".aui-dropdown2-checkbox"),"checkbox");C(o.find(".aui-dropdown2-radio"),"radio");function q(){var ab=n.offset();var af=n.outerWidth();var ae=o.outerWidth();var aa=g("body").outerWidth(true);var T=Math.max(parseInt(o.css("min-width"),10),af);var U=n.data("container")||false;var ad="left";if(j){var V=parseInt(o.css("border-left-width"),10)+parseInt(o.css("border-right-width"),10);ae=ae-V;T=T-V}if(!R){o.css("min-width",T+"px")}var W=ab.left,ac=ab.top+n.outerHeight();if(R){var Y=3;W=ab.left+E.outerWidth()-Y;ac=ab.top}if(aa<W+ae&&ae<=W+af){W=ab.left+af-ae;if(R){W=ab.left-ae}ad="right"}if(U){var S=n.closest(U),Z=n.offset().left+n.outerWidth(),X=Z+ae;if(T>=ae){ae=T}if(X>Z){W=Z-ae;ad="right"}if(j){W-=V}}o.attr({"data-dropdown2-alignment":ad,"aria-hidden":"false"}).css({display:"block",left:W+"px",top:ac+"px"});o.appendTo(document.body)}q();if(n.hasClass("toolbar-trigger")){o.addClass("aui-dropdown2-in-toolbar")}if(n.parent().hasClass("aui-buttons")){o.addClass("aui-dropdown2-in-buttons")}if(n.parents().hasClass("aui-header")){o.addClass("aui-dropdown2-in-header")}o.trigger("aui-dropdown2-show",r);if(r.selectFirst){m()}I("on");function A(){l();I("off");setTimeout(function(){o.css("display","none").css("min-width","").insertAfter(n).attr("aria-hidden","true");if(!R){n.removeClass("active")}y().removeClass("active");o.removeClass("aui-dropdown2-in-toolbar");o.removeClass("aui-dropdown2-in-buttons");if(P){o.insertBefore(P)}else{o.appendTo(M)}o.trigger("aui-dropdown2-hide")},0)}function L(){A();if(R){E.trigger("aui-dropdown2-hide-all")}}function G(S){if(R&&S.target===E[0]){A()}}function p(S){return !S.is(".disabled, [aria-disabled=true]")}function v(S){return S.hasClass("aui-dropdown2-sub-trigger")}function F(S,T){if(!v(S)){return}T=g.extend({},T,{$menu:t});var U=i(S);if(U.is(":visible")){U.trigger("aui-dropdown2-select-first")}else{S.trigger("aui-button-invoke",T)}}function y(){return o.find("a.active")}var w=null;function u(S){if(w&&w[0]===S[0]){return false}w=S;y().removeClass("active");if(p(S)){S.addClass("active")}o.trigger("aui-dropdown2-item-selected");x();return true}function m(){u(o.find("a:not(.disabled)").first())}function J(T){var S=o.find("> ul > li > a, > .aui-dropdown2-section > ul > li > a").not(".disabled");u(K(S,T,true))}function B(S){if(S.length>0){L();S.trigger("aui-button-invoke")}}function Q(S){B(K(t.find(".aui-dropdown2-trigger").not(".disabled, [aria-disabled=true], .aui-dropdown2-sub-trigger"),S,false))}function K(U,V,T){var S=U.index(U.filter(".active"));S+=(S<0&&V<0)?1:0;S+=V;if(T){S%=U.length}else{if(S<0){S=U.length}}return U.eq(S)}function O(){B(g(this))}function l(){if(c===N){e.unbind(N);c=null}}function x(){if(c===N){return}e.unbind(c);e.bind(N);c=N}function I(T){var U="bind";var S="delegate";if(T!=="on"){U="unbind";S="undelegate"}if(!R){t[S](".aui-dropdown2-trigger:not(.active)","mousemove",O);n[U]("aui-button-invoke",A)}else{E[U]("aui-dropdown2-hide aui-dropdown2-item-selected aui-dropdown2-step-out",G)}o[U]("aui-dropdown2-hide-all",L);o[S]("a",s);o[U]("aui-dropdown2-hide",x);o[U]("aui-dropdown2-select-first",m)}},mousedown:function(l){if(l.which===1){g(this).bind(f)}}};var f={mouseleave:function(){e.bind(h)},"mouseup mouseleave":function(){g(this).unbind(f)}};var h={mouseup:function(l){var m=g(l.target).closest(".aui-dropdown2 a, .aui-dropdown2-trigger")[0];if(m){setTimeout(function(){k(m)},0)}},"mouseup mouseleave":function(){g(this).unbind(h)}};function k(l){if(l.click){l.click()}else{var m=document.createEvent("MouseEvents");m.initMouseEvent("click",true,true,window,0,0,0,0,0,false,false,false,false,0,null);l.dispatchEvent(m)}}function d(m,l){return(m===l)||g.contains(l,m)}function i(n){if(!(n instanceof AJS.$)){n=g(n)}var o=n.attr("aria-owns"),l=n.attr("aria-haspopup"),m=document.getElementById(o);if(m){return g(m)}else{if(!o){throw new Error("Dropdown 2 trigger required attribute not set: aria-owns")}if(!l){throw new Error("Dropdown 2 trigger required attribute not set: aria-haspopup")}if(!m){throw new Error("Dropdown 2 trigger aria-owns attr set to nonexistent id: "+o)}throw new Error("Dropdown 2 trigger unknown error. I don't know what you did, but there's smoke everywhere. Consult the documentation.")}}e.delegate(".aui-dropdown2-trigger",b);e.delegate(".aui-dropdown2-trigger:not(.active):not([aria-disabled=true]),.aui-dropdown2-sub-trigger:not([aria-disabled=true])",a);e.delegate(".aui-dropdown2-checkbox:not(.disabled)","click",function(){var l=g(this);if(l.hasClass("checked")){l.removeClass("checked").attr("aria-checked","false");l.trigger("aui-dropdown2-item-uncheck")}else{l.addClass("checked").attr("aria-checked","true");l.trigger("aui-dropdown2-item-check")}});e.delegate(".aui-dropdown2-radio:not(.checked):not(.disabled)","click",function(){var l=g(this);var m=l.closest("ul").find(".checked");m.removeClass("checked").attr("aria-checked","false").trigger("aui-dropdown2-item-uncheck");l.addClass("checked").attr("aria-checked","true").trigger("aui-dropdown2-item-check")});e.delegate(".aui-dropdown2 a.disabled","click",function(l){l.preventDefault()})})(AJS.$);
(function(e){function d(h,g){return(typeof h=="function")?(h.call(g)):h}function f(g){while(g=g.parentNode){if(g==document){return true}}return false}var a=0;function b(){var g=a++;return"tipsyuid"+g}function c(h,g){this.$element=e(h);this.options=g;this.enabled=true;this.fixTitle()}c.prototype={show:function(){var p=this.getTitle();if(p&&this.enabled){var i=this.tip();i.find(".tipsy-inner")[this.options.html?"html":"text"](p);i[0].className="tipsy";i.remove().css({top:0,left:0,visibility:"hidden",display:"block"}).prependTo(document.body);var l=this;function h(){l.hoverTooltip=true}function m(){if(l.hoverState=="in"){return}l.hoverTooltip=false;if(l.options.trigger!="manual"){var r=l.options.trigger=="hover"?"mouseleave.tipsy":"blur.tipsy";l.$element.trigger(r)}}if(this.options.hoverable){i.hover(h,m)}var n=e.extend({},this.$element.offset(),{width:this.$element[0].offsetWidth,height:this.$element[0].offsetHeight});var g=i[0].offsetWidth,k=i[0].offsetHeight,q=d(this.options.gravity,this.$element[0]);var o;switch(q.charAt(0)){case"n":o={top:n.top+n.height+this.options.offset,left:n.left+n.width/2-g/2};break;case"s":o={top:n.top-k-this.options.offset,left:n.left+n.width/2-g/2};break;case"e":o={top:n.top+n.height/2-k/2,left:n.left-g-this.options.offset};break;case"w":o={top:n.top+n.height/2-k/2,left:n.left+n.width+this.options.offset};break}if(q.length==2){if(q.charAt(1)=="w"){o.left=n.left+n.width/2-15}else{o.left=n.left+n.width/2-g+15}}i.css(o).addClass("tipsy-"+q);i.find(".tipsy-arrow")[0].className="tipsy-arrow tipsy-arrow-"+q.charAt(0);if(this.options.className){i.addClass(d(this.options.className,this.$element[0]))}if(this.options.fade){i.stop().css({opacity:0,display:"block",visibility:"visible"}).animate({opacity:this.options.opacity})}else{i.css({visibility:"visible",opacity:this.options.opacity})}if(this.options.aria){var j=b();i.attr("id",j);this.$element.attr("aria-describedby",j)}}},hide:function(){if(this.options.fade){this.tip().stop().fadeOut(function(){e(this).remove()})}else{this.tip().remove()}if(this.options.aria){this.$element.removeAttr("aria-describedby")}},fixTitle:function(){var g=this.$element;if(g.attr("title")||typeof(g.attr("original-title"))!="string"){g.attr("original-title",g.attr("title")||"").removeAttr("title")}},getTitle:function(){var i,g=this.$element,h=this.options;this.fixTitle();var i,h=this.options;if(typeof h.title=="string"){i=g.attr(h.title=="title"?"original-title":h.title)}else{if(typeof h.title=="function"){i=h.title.call(g[0])}}i=(""+i).replace(/(^\s*|\s*$)/,"");return i||h.fallback},tip:function(){if(!this.$tip){this.$tip=e('<div class="tipsy"></div>').html('<div class="tipsy-arrow"></div><div class="tipsy-inner"></div>').attr("role","tooltip");this.$tip.data("tipsy-pointee",this.$element[0])}return this.$tip},validate:function(){if(!this.$element[0].parentNode){this.hide();this.$element=null;this.options=null}},enable:function(){this.enabled=true},disable:function(){this.enabled=false},toggleEnabled:function(){this.enabled=!this.enabled}};e.fn.tipsy=function(j){if(j===true){return this.data("tipsy")}else{if(typeof j=="string"){var l=this.data("tipsy");if(l){l[j]()}return this}}j=e.extend({},e.fn.tipsy.defaults,j);if(j.hoverable){j.delayOut=j.delayOut||20}function i(n){var o=e.data(n,"tipsy");if(!o){o=new c(n,e.fn.tipsy.elementOptions(n,j));e.data(n,"tipsy",o)}return o}function m(){var n=i(this);n.hoverState="in";if(j.delayIn==0){n.show()}else{n.fixTitle();setTimeout(function(){if(n.hoverState=="in"){n.show()}},j.delayIn)}}function h(){var n=i(this);n.hoverState="out";if(j.delayOut==0){n.hide()}else{setTimeout(function(){if(n.hoverState=="out"&&!n.hoverTooltip){n.hide()}},j.delayOut)}}if(!j.live){this.each(function(){i(this)})}if(j.trigger!="manual"){var k=j.trigger=="hover"?"mouseenter.tipsy":"focus.tipsy",g=j.trigger=="hover"?"mouseleave.tipsy":"blur.tipsy";if(j.live){e(this.context).on(k,this.selector,m).on(g,this.selector,h)}else{this.bind(k,m).bind(g,h)}}return this};e.fn.tipsy.defaults={aria:false,className:null,delayIn:0,delayOut:0,fade:false,fallback:"",gravity:"n",html:false,live:false,hoverable:false,offset:0,opacity:0.8,title:"title",trigger:"hover"};e.fn.tipsy.revalidate=function(){e(".tipsy").each(function(){var g=e.data(this,"tipsy-pointee");if(!g||!f(g)){e(this).remove()}})};e.fn.tipsy.elementOptions=function(h,g){return e.metadata?e.extend({},g,e(h).metadata()):g};e.fn.tipsy.autoNS=function(){return e(this).offset().top>(e(document).scrollTop()+e(window).height()/2)?"s":"n"};e.fn.tipsy.autoWE=function(){return e(this).offset().left>(e(document).scrollLeft()+e(window).width()/2)?"e":"w"};e.fn.tipsy.autoBounds=function(h,g){return function(){var i={ns:g[0],ew:(g.length>1?g[1]:false)},l=e(document).scrollTop()+h,j=e(document).scrollLeft()+h,k=e(this);if(k.offset().top<l){i.ns="n"}if(k.offset().left<j){i.ew="w"}if(e(window).width()+e(document).scrollLeft()-k.offset().left<h){i.ew="e"}if(e(window).height()+e(document).scrollTop()-k.offset().top<h){i.ns="s"}return i.ns+(i.ew?i.ew:"")}}})(jQuery);
(function(a){a.fn.tooltip=function(b){var e=a.extend({},a.fn.tooltip.defaults,b),c=this.tipsy(e);if(e.hideOnClick&&(e.trigger=="hover"||!e.trigger&&this.tipsy.defaults.trigger=="hover")){var d=function(){a(this).tipsy("hide")};if(e.live){a(this.context).on("click.tipsy",this.selector,d)}else{this.bind("click.tipsy",d)}}return c};a.fn.tooltip.defaults={opacity:1,offset:1,delayIn:500,hoverable:true,hideOnClick:true}}(AJS.$));