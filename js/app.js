function openConf(t) {
    $("#ms-configurator").animate( {
    right: "0px"}
, 400), $(".ms-configurator-btn").animate( {
    right: "-60px"}
, 200);
}function closeConf() {
    $("#ms-configurator").animate( {
    right: "-310px"}
, 200), $(".ms-configurator-btn").animate( {
    right: "20px"}
, 400);
}function tabs() {
    for(var t=$(".nav.nav-tabs"), n= {
}
, o= {
}
, e=0;
    e<t.length;
    e++) {
    var i=e+1, a=$(t[e]).children(), s=$(t[e]).children().length;
    $(a[a.length-1]).hasClass("ms-tabs-indicator")||($(t[e]).data("id", i), $(t[e]).append('<span id="i'+i+'" class="ms-tabs-indicator"></span>'));
    var r=$("#i"+i);
    n["tabW"+i]=[], o["tabL"+i]=[];
    var l=n["tabW"+i], c=o["tabL"+i], p=0;
    for(m=0;
    m<s;
    m++)c[m]=p, l[m]=$(a[m]).width(), $(a[m]).hasClass("active")&&r.css( {
    left: c[m]+"px", width:l[m]+"px"}
), p+=l[m];
}$(".nav.nav-tabs > li").click(function(t) {
    a=$(this).parent();
    var e=a.data("id");
    a.children().removeClass("current"), $(this).addClass("current");
    for(var i=a.children(), s=0;
    s<i.length-1;
    s++)$(i[s]).hasClass("current")&&$("#i"+e).css( {
    left: o["tabL"+e][s]+"px", width:n["tabW"+e][s]+"px"}
);
});
}!function(t, n, o) {
    var e=t();
    t.fn.dropdownHover=function(o) {
    return"ontouchstart"in document?this: (e=e.add(this.parent()), this.each(function() {
    function i(t) {
    n.clearTimeout(a), n.clearTimeout(s), s=n.setTimeout(function() {
    e.find(": focus").blur(), h.instantlyCloseOthers===!0&&e.removeClass("open"), n.clearTimeout(s), r.attr("aria-expanded", "true"), l.addClass("open"), r.trigger(u);
}
, h.hoverDelay);
}var a, s, r=t(this), l=r.parent(), c= {
    delay: 0, hoverDelay:0, instantlyCloseOthers:!0;
}
, p= {
    delay: t(this).data("delay"), hoverDelay:t(this).data("hover-delay"), instantlyCloseOthers:t(this).data("close-others");
}
, u="show.bs.dropdown", d="hide.bs.dropdown", h=t.extend(!0,  {
}
, c, o, p);
    l.hover(function(o) {
    return!l.hasClass("open")&&!r.is(o.target)||void(t(n).width()>767&&i(o));
}
, function() {
    t(n).width()>767&&(n.clearTimeout(s), a=n.setTimeout(function() {
    r.attr("aria-expanded", "false"), l.removeClass("open"), r.trigger(d);
}
, h.delay));
}), r.hover(function(o) {
    return!l.hasClass("open")&&!l.is(o.target)&&t(n).width()>767||void(t(n).width()>767&&i(o));
}
), l.find(".dropdown-submenu").each(function() {
    var o, e=t(this);
    e.hover(function() {
    n.clearTimeout(o), e.children(".dropdown-menu").show(), e.siblings().children(".dropdown-menu").hide();
}
, function() {
    var t=e.children(".dropdown-menu");
    o=n.setTimeout(function() {
    t.hide();
}
, h.delay);
});
});
}));
}, t(document).ready(function() {
    t('[data-hover="dropdown"]').dropdownHover();
}
);
}(jQuery, window), $(document).ready(function() {
    document.addEventListener("touchstart", function() {
}
, !0), (new WOW).init(), $(".sb-site-container > .container").css("min-height", $(window).height()-$(".sb-site-container").height()+"px"), plyr.setup(), $(".counter").counterUp( {
    delay: 10, time:2e3;
}
), $(".carousel").carousel(), $('[data-toggle="tooltip"]').tooltip(), $('[data-toggle="popover"]').popover(), $("#status").fadeOut(), $("#ms-preload").delay(350).fadeOut("slow"), $("body").delay(350).css( {
    overflow: "visible"}
), /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)?$.slidebars( {
    scrollLock: !0;
}
):$.slidebars(), $(".megamenu-col").matchHeight(), $(".ms-footer-col").matchHeight(), $(".hero-img-col").matchHeight(), $.material.init(), smoothScroll.init( {
    selector: "[data-scroll]", selectorHeader:null, speed:500, easing:"easeInOutCubic", offset:0, callback:function(t, n) {
}
}
);
    var t=$(".btn-back-top");
    $(window).scroll(function() {
    $(this).scrollTop()>400?t.addClass("back-show"): t.removeClass("back-show");
}
), function(t) {
    t(function() {
    t(document).off("click.bs.tab.data-api", '[data-hover="tab"]'), t(document).on("mouseenter.bs.tab.data-api", '[data-hover="tab"]', function() {
    t(this).tab("show");
}
);
});
}(jQuery);
    var n=$(".masonry-container");
    n.imagesLoaded(function() {
    n.masonry( {
    columnWidth: ".masonry-item", itemSelector:".masonry-item"}
);
}), $(".nav").on("click mousedown mouseup touchstart", "a.has_children", function() {
    return $(this).next("ul").hasClass("open_t")&&!$(this).parents("ul").hasClass("open_t")?($(".open_t").removeClass("open_t"), !1): ($(".open_t").not($(this).parents("ul")).removeClass("open_t"), $(this).next("ul").addClass("open_t"), !1);
}
), $(document).on("click", ":not(.has_children,  .has_children *)", function() {
    if($(".open_t").length>0)return $(".open_t").removeClass("open_t"), $(".open_t").parent().removeClass("open"), !1;
}
);
    var o=!1;
    $(".ms-conf-btn").click(function() {
    o?(o=!1, closeConf()): (o=!0, openConf());
}
), $(".sb-site-container").click(function() {
    o&&(o=!1, closeConf());
}
);
    var e=$(".ms-navbar"), i=$(".navbar-nav"), a=$("body"), s=$(".sb-site-container").hasClass("ms-nav-fixed");
    $(window).scroll(function() {
    s||($(window).scrollTop()>120&&(e.addClass("shrink"), e.addClass("navbar-fixed-top"), e.removeClass("navbar-static-top"), i.addClass("navbar-right"), a.addClass("bd-scroll")), $(window).scrollTop()<121&&(e.removeClass("shrink"), e.addClass("navbar-static-top"), e.removeClass("navbar-fixed-top"), i.removeClass("navbar-right"), a.removeClass("bd-scroll")));
}
);
}), function(t) {
    t(".input-number .btn-circle: first-of-type").on("click", function() {
    t(".input-number input").val(parseInt(t(".input-number input").val(), 10)-1);
}
), t(".input-number .btn-circle: last-of-type").on("click", function() {
    t(".input-number input").val(parseInt(t(".input-number input").val(), 10)+1);
}
);
}(jQuery), function(t) {
    function n(t) {
    return"undefined"==typeof t.which||"number"==typeof t.which&&t.which>0&&(!t.ctrlKey&&!t.metaKey&&!t.altKey&&8!=t.which&&9!=t.which&&13!=t.which&&16!=t.which&&17!=t.which&&20!=t.which&&27!=t.which);
}
function o(n) {
    var o=t(n);
    o.prop("disabled")||o.closest(".form-group").addClass("is-focused");
}
function e(n) {
    n.closest("label").hover(function() {
    var n=t(this).find("input");
    n.prop("disabled")||o(n);
}
, function() {
    i(t(this).find("input"));
}
);
}function i(n) {
    t(n).closest(".form-group").removeClass("is-focused");
}
t.expr[": "].notmdproc=function(n) {
    return!t(n).data("mdproc");
}
, t.material= {
    options:  {
    validate: !0, input:!0, ripples:!0, checkbox:!0, togglebutton:!0, radio:!0, arrive:!0, autofill:!1, withRipples:[".btn:not(.btn-link)", ".btn-circle", ".card-image", ".navbar a:not(.withoutripple)", ".dropdown-menu a", ".nav-tabs a:not(.withoutripple)", ".withripple", ".pagination li:not(.active):not(.disabled) a:not(.withoutripple)"].join(", "), inputElements:"input.form-control,  textarea.form-control,  select.form-control", checkboxElements:".checkbox > label > input[type=checkbox]", togglebuttonElements:".togglebutton > label > input[type=checkbox]", radioElements:".radio > label > input[type=radio]"}
, checkbox:function(n) {
    var o=t(n?n: this.options.checkboxElements).filter(":notmdproc").data("mdproc", !0).after("<span class='checkbox-material'><span class='check'></span></span>");
    e(o);
}
, togglebutton: function(n) {
    var o=t(n?n: this.options.togglebuttonElements).filter(":notmdproc").data("mdproc", !0).after("<span class='toggle'></span>");
    e(o);
}
, radio: function(n) {
    var o=t(n?n: this.options.radioElements).filter(":notmdproc").data("mdproc", !0).after("<span class='circle'></span><span class='check'></span>");
    e(o);
}
, input: function(n) {
    t(n?n: this.options.inputElements).filter(":notmdproc").data("mdproc", !0).each(function() {
    var n=t(this), o=n.closest(".form-group");
    0!==o.length||"hidden"===n.attr("type")||n.attr("hidden")||(n.wrap("<div class='form-group'></div>"), o=n.closest(".form-group")), n.attr("data-hint")&&(n.after("<p class='help-block'>"+n.attr("data-hint")+"</p>"), n.removeAttr("data-hint"));
    var e= {
    "input-lg": "form-group-lg", "input-sm":"form-group-sm"}
;
    if(t.each(e, function(t, e) {
    n.hasClass(t)&&(n.removeClass(t), o.addClass(e));
}
), n.hasClass("floating-label")) {
    var i=n.attr("placeholder");
    n.attr("placeholder", null).removeClass("floating-label");
    var a=n.attr("id"), s="";
    a&&(s="for='"+a+"'"), o.addClass("label-floating"), n.after("<label "+s+"class='control-label'>"+i+"</label>");
}
null!==n.val()&&"undefined"!=n.val()&&""!==n.val()||o.addClass("is-empty"), o.append("<span class='material-input'></span>"), o.find("input[type=file]").length>0&&o.addClass("is-fileinput");
});
}, attachInputEventHandlers: function() {
    var e=this.options.validate;
    t(document).on("change", ".checkbox input[type=checkbox]", function() {
    t(this).blur();
}
).on("keydown paste", ".form-control", function(o) {
    n(o)&&t(this).closest(".form-group").removeClass("is-empty");
}
).on("keyup change", ".form-control", function() {
    var n=t(this), o=n.closest(".form-group"), i="undefined"==typeof n[0].checkValidity||n[0].checkValidity();
    ""===n.val()?o.addClass("is-empty"): o.removeClass("is-empty"), e&&(i?o.removeClass("has-error"):o.addClass("has-error"));
}
).on("focus", ".form-control,  .form-group.is-fileinput", function() {
    o(this);
}
).on("blur", ".form-control,  .form-group.is-fileinput", function() {
    i(this);
}
).on("change", ".form-group input", function() {
    var n=t(this);
    if("file"!=n.attr("type")) {
    var o=n.closest(".form-group"), e=n.val();
    e?o.removeClass("is-empty"): o.addClass("is-empty");
}
}).on("change", ".form-group.is-fileinput input[type='file']", function() {
    var n=t(this), o=n.closest(".form-group"), e="";
    t.each(this.files, function(t, n) {
    e+=n.name+",  "}
), e=e.substring(0, e.length-2), e?o.removeClass("is-empty"): o.addClass("is-empty"), o.find("input.form-control[readonly]").val(e);
});
}, ripples:function(n) {
    t(n?n: this.options.withRipples).ripples();
}
, autofill:function() {
    var n=setInterval(function() {
    t("input[type!=checkbox]").each(function() {
    var n=t(this);
    n.val()&&n.val()!==n.attr("value")&&n.trigger("change");
}
);
}, 100);
    setTimeout(function() {
    clearInterval(n);
}
, 1e4);
}, attachAutofillEventHandlers: function() {
    var n;
    t(document).on("focus", "input", function() {
    var o=t(this).parents("form").find("input").not("[type=file]");
    n=setInterval(function() {
    o.each(function() {
    var n=t(this);
    n.val()!==n.attr("value")&&n.trigger("change");
}
);
}, 100);
}).on("blur", ".form-group input", function() {
    clearInterval(n);
}
);
}, init: function(n) {
    this.options=t.extend( {
}
, this.options, n);
    var o=t(document);
    t.fn.ripples&&this.options.ripples&&this.ripples(), this.options.input&&(this.input(), this.attachInputEventHandlers()), this.options.checkbox&&this.checkbox(), this.options.togglebutton&&this.togglebutton(), this.options.radio&&this.radio(), this.options.autofill&&(this.autofill(), this.attachAutofillEventHandlers()), document.arrive&&this.options.arrive&&(t.fn.ripples&&this.options.ripples&&o.arrive(this.options.withRipples, function() {
    t.material.ripples(t(this));
}
), this.options.input&&o.arrive(this.options.inputElements, function() {
    t.material.input(t(this));
}
), this.options.checkbox&&o.arrive(this.options.checkboxElements, function() {
    t.material.checkbox(t(this));
}
), this.options.radio&&o.arrive(this.options.radioElements, function() {
    t.material.radio(t(this));
}
), this.options.togglebutton&&o.arrive(this.options.togglebuttonElements, function() {
    t.material.togglebutton(t(this));
}
));
}}}(jQuery), function(t, n, o, e) {
    "use strict";
    function i(n, o) {
    s=this, this.element=t(n), this.options=t.extend( {
}
, r, o), this._defaults=r, this._name=a, this.init();
}
var a="ripples", s=null, r= {
}
;
    i.prototype.init=function() {
    var o=this.element;
    o.on("mousedown touchstart", function(e) {
    if(!s.isTouch()||"mousedown"!==e.type) {
    o.find(".ripple-container").length||o.append('<div class="ripple-container"></div>');
    var i=o.children(".ripple-container"), a=s.getRelY(i, e), r=s.getRelX(i, e);
    if(a||r) {
    var l=s.getRipplesColor(o), c=t("<div></div>");
    c.addClass("ripple").css( {
    left: r, top:a, "background-color":l;
}
), i.append(c), function() {
    return n.getComputedStyle(c[0]).opacity;
}
(), s.rippleOn(o, c), setTimeout(function() {
    s.rippleEnd(c);
}
, 500), o.on("mouseup mouseleave touchend", function() {
    c.data("mousedown", "off"), "off"===c.data("animating")&&s.rippleOut(c);
}
);
}}});
}, i.prototype.getNewSize=function(t, n) {
    return Math.max(t.outerWidth(), t.outerHeight())/n.outerWidth()*2.5;
}
, i.prototype.getRelX=function(t, n) {
    var o=t.offset();
    return s.isTouch()?(n=n.originalEvent, 1===n.touches.length&&n.touches[0].pageX-o.left): n.pageX-o.left;
}
, i.prototype.getRelY=function(t, n) {
    var o=t.offset();
    return s.isTouch()?(n=n.originalEvent, 1===n.touches.length&&n.touches[0].pageY-o.top): n.pageY-o.top;
}
, i.prototype.getRipplesColor=function(t) {
    var o=t.data("ripple-color")?t.data("ripple-color"): n.getComputedStyle(t[0]).color;
    return o;
}
, i.prototype.hasTransitionSupport=function() {
    var t=o.body||o.documentElement, n=t.style, i=n.transition!==e||n.WebkitTransition!==e||n.MozTransition!==e||n.MsTransition!==e||n.OTransition!==e;
    return i;
}
, i.prototype.isTouch=function() {
    return/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
}
, i.prototype.rippleEnd=function(t) {
    t.data("animating", "off"), "off"===t.data("mousedown")&&s.rippleOut(t);
}
, i.prototype.rippleOut=function(t) {
    t.off(), s.hasTransitionSupport()?t.addClass("ripple-out"): t.animate( {
    opacity: 0;
}
, 100, function() {
    t.trigger("transitionend");
}
), t.on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function() {
    t.remove();
}
);
}, i.prototype.rippleOn=function(t, n) {
    var o=s.getNewSize(t, n);
    s.hasTransitionSupport()?n.css( {
    "-ms-transform": "scale("+o+")", "-moz-transform":"scale("+o+")", "-webkit-transform":"scale("+o+")", transform:"scale("+o+")"}
).addClass("ripple-on").data("animating", "on").data("mousedown", "on"):n.animate( {
    width: 2*Math.max(t.outerWidth(), t.outerHeight()), height:2*Math.max(t.outerWidth(), t.outerHeight()), "margin-left":Math.max(t.outerWidth(), t.outerHeight())*-1, "margin-top":Math.max(t.outerWidth(), t.outerHeight())*-1, opacity:.2;
}
, 500, function() {
    n.trigger("transitionend");
}
);
}, t.fn.ripples=function(n) {
    return this.each(function() {
    t.data(this, "plugin_"+a)||t.data(this, "plugin_"+a, new i(this, n));
}
);
}}(jQuery, window, document), window.onresize=tabs;
    var handler=window.onresize;
    handler.apply(window, [" On"]), $("#ms-account-modal").on("shown.bs.modal", function(t) {
    setTimeout(tabs, 700);
}
);
    