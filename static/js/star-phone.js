/**
 * Created by Administrator on 2017/7/19.
 */
//animate initial
new WOW().init();

//the function below is for changing display
function displayHandler(self, pics, contents, index) {
    if (self) {
        self.addClass("active").siblings().removeClass("active");
    }
    if (pics) {
        pics.eq(index).addClass("active").siblings().removeClass("active");
    }
    if (contents) {
        contents.eq(index).addClass("active").siblings().removeClass("active");
    }
}
//the function below is for sliding items
function slideHandler(parent, child, index) {
    parent.animate({left: -child.outerWidth(true) * index}, 800)
}

//for mobile device
var startx, starty;
//get angle
function getAngle(angx, angy) {
    return Math.atan2(angy, angx) * 180 / Math.PI;
}
//get direction based on the end point, 1 for left,2 for right
function getDirection(startx, starty, endx, endy) {
    var angx = endx - startx;
    var angy = endy - starty;
    var result = 0;

    //if slide distance is too short
    if (Math.abs(angx) < 50 && Math.abs(angy) < 50) {
        return result;
    }

    var angle = getAngle(angx, angy);
    if ((angle >= 135 && angle <= 180) || (angle >= -180 && angle < -135)) {
        result = 1;
    } else if (angle >= -45 && angle <= 45) {
        result = 2;
    }

    return result;
}
//get start point and end point, then slide items
function touchStartHandler(e) {
    startx = e.originalEvent.touches[0].pageX;
    starty = e.originalEvent.touches[0].pageY;
}
function touchEndHandler(e, self, items, slides, index) {
    var endx, endy;
    endx = e.originalEvent.changedTouches[0].pageX;
    endy = e.originalEvent.changedTouches[0].pageY;
    var direction = getDirection(startx, starty, endx, endy);
    switch (direction) {
        case 1:
            if (index < slides.length - 1) {
                if (self.flag) {
                    slideHandler(self.target, self.child, index + 1)
                } else {
                    displayHandler(self.target.next(), null, null, null);
                }
                if (items) {
                    if (items.flag) {
                        slideHandler(items.target, items.child, index + 1)
                    } else {
                        displayHandler(null, items.target, null, index + 1)
                    }
                }
                displayHandler(null, slides, null, index + 1);
            }
            break;
        case 2:
            if (index > 0) {
                if (self.flag) {
                    slideHandler(self.target, self.child, index - 1)
                } else {
                    displayHandler(self.target.prev(), null, null, null);
                }
                if (items) {
                    if (items.flag) {
                        slideHandler(items.target, items.child, index - 1)
                    } else {
                        console.log(items.target.next());
                        displayHandler(null, items.target, null, index - 1)
                    }
                }
                displayHandler(null, slides, null, index - 1);
            }
            break;
        default:
    }
}

//sp-nav animate control
function spNav() {
    var oSpNav = $(".sp-nav");
    var nHeader = $("header").outerHeight(true);
    var aAs = oSpNav.find(".big-screen ul a");
    var aHighLights = [$(".sp-camera"), $(".sp-design"), $(".sp-charge"), $(".sp-performance"), $(".sp-special"), $(".sp-network"), $(".sp-matters")];
    var aSections = [$(".sp-video"), $(".camera-lens-bg"), $(".sp-design"), $(".sp-performance-up"), $(".sp-network")];
    var aBlacks = [];
    for (var i = 0; i < aSections.length; i++) {
        var oBlack = {};
        oBlack.start = aSections[i].offset().top;
        oBlack.end = aSections[i].offset().top + aSections[i].outerHeight(true);
        aBlacks.push(oBlack);
    }
    $(window).scroll(function () {
        var nScrollTop = $(this).scrollTop();
        if (nScrollTop >= nHeader) {
            if (nScrollTop >= aBlacks[0].start && nScrollTop <= aBlacks[0].end || nScrollTop >= aBlacks[1].start && nScrollTop <= aBlacks[1].end || nScrollTop >= aBlacks[2].start && nScrollTop <= aBlacks[2].end || nScrollTop >= aBlacks[3].start && nScrollTop <= aBlacks[3].end || nScrollTop >= aBlacks[4].start && nScrollTop <= aBlacks[4].end) {
                oSpNav.css({position: "fixed", top: 0, backgroundColor: "rgba(0,0,0,0.6)", color: "#fff"});
                aAs.css({color: "#fff"});
            } else {
                oSpNav.css({position: "fixed", top: 0, backgroundColor: "rgba(255,255,255,0.6)"});
                aAs.css({color: "#000"});
            }
            for (var j = aHighLights.length - 1; j >= 0; j--) {
                if (nScrollTop >= aHighLights[j].offset().top) {
                    aAs.removeClass("current");
                    aAs.eq(j).addClass("current");
                }
            }
        } else {
            oSpNav.css({position: "relative"})
        }
    });
    $("#one-small-btn").click(function () {
        $(this).find("span").toggleClass("rotate");
        $("#small-hidden-menu").toggleClass("dn");
    });
}
function changeColor() {
    var tag = false, ox = 0, left = 0;
    var startHandler, moveHandler, stopHandler;
    var oChangeBox = $(".change-box");
    var oSpan = oChangeBox.find("span");

    //check whether it's mobile
    function checkPc() {
        var userAgentInfo = navigator.userAgent;
        var Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"];
        var flag = true;
        for (var v = 0; v < Agents.length; v++) {
            if (userAgentInfo.indexOf(Agents[v]) > 0) {
                flag = false;
                break;
            }
        }
        return flag;
    }

    if (checkPc) {
        startHandler = "mousedown";
        moveHandler = "mousemove";
        stopHandler = "mouseup";
    } else {
        startHandler = "touchstart";
        moveHandler = "touchmove";
        stopHandler = "touchend";
    }
    oSpan.on(startHandler, function (e) {
        ox = e.pageX - left;
        tag = true;
    });
    $(document).on(stopHandler, function () {
        tag = false;
    });
    oChangeBox.on(moveHandler, function (e) {
        if (tag) {
            left = e.pageX - ox;
            if (left <= 0) {
                left = 0;
            } else if (left > $(this).width() - oSpan.width() / 2) {
                left = $(this).width() - oSpan.width() / 2;
            }
            oSpan.css('left', left);
            $(this).prev().css({opacity: 1 - left / $(this).width()})
        }
    });
}
spNav();
changeColor();

//camera-hd animate control
$(".camera-hd-content ol li").click(function () {
    displayHandler($(this), $(".camera-hd-content ul li"), $(".camera-hd-picbox li"), $(this).index());
});
$(".camera-hd-content ul li").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(this), flag: false}, {target: $(".camera-hd-picbox li"), flag: false}, $(".camera-hd-content ol li"), $(this).index());
    }
});
$(".camera-hd-picbox li").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(this), flag: false}, {target: $(".camera-hd-content ul li"), flag: false}, $(".camera-hd-content ol li"), $(this).index())
    }
});

//camera-lens animate control
$(".camera-lens-inner li").click(function () {
    displayHandler($(this), null, $(".camera-lens-cell"), $(this).index())
});
$(".camera-lens-cell").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(this), flag: false}, null, $(".camera-lens-inner ol li"), $(this).index())
    }
});

//camera-shot animate control
function cameraShot() {
    var nWindowWidth = window.innerWidth;
    if (nWindowWidth <= 1024) {
        $(".camera-container ul li img").width(nWindowWidth);
    }
    var i = 0;
    var tmp = 0;
    var oCameraShotWrap = $(".camera-shot-wrap");
    var oUl = oCameraShotWrap.find("ul");
    var aLis = oCameraShotWrap.find("ol li");
    var nWidth = [1250, 1250, 1250, 900, 1250, 1600, 1250, 1250, 1600];
    $(".btn-next").click(function () {
        if (i >= 9) {
            i = 9;
        } else {
            tmp += nWidth[i];
            oUl.animate({left: -tmp}, 800);
            i++;
            aLis.eq(i).addClass("active").siblings().removeClass("active");
        }
    });
    $(".btn-prev").click(function () {
        if (i <= 0) {
            i = 0;
        } else {
            i--;
            tmp -= nWidth[i];
            oUl.animate({left: -tmp}, 800);
            aLis.eq(i).addClass("active").siblings().removeClass("active");
        }
    });
    aLis.click(function () {
        var index = $(this).index();
        if (nWindowWidth <= 1024) {
            oUl.animate({left: -index * nWindowWidth}, 800);
        } else {
            var tmp2 = 0;
            for (var j = 0; j < index; j++) {
                tmp2 += nWidth[j];
            }
            tmp = tmp2;
            oUl.animate({left: -tmp}, 800);
            i = index;
        }
        aLis.eq(index).addClass("active").siblings().removeClass("active");
    })
}
cameraShot();
$(".camera-container ul li").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(".camera-container ul"), child: $(this), flag: true}, null, $(".camera-shot-wrap ol li"), $(this).index())
    }
});

//sp-design animate control
$(".sp-design ol li").click(function () {
    displayHandler($(this), $(".sp-design-item"), $(".sp-design-content li"), $(this).index());
    slideHandler($(".sp-design-container-m"), $(".silent-model-m"), $(this).index());
});
$(".sp-design-desc .silent-model").click(function () {
    displayHandler($(this), $(".silent-item"), null, $(this).index())
});
$(".silent-m .silent-model").click(function () {
    displayHandler($(this), $(".silent-model-m"), null, $(this).index())
});
$(".sp-design-content li").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(this), flag: false}, {target: $(".sp-design-container-m"), child: $(".silent-model-m"), flag: true}, $(".sp-design ol li"), $(this).index())
    }
});
$(".sp-design-item-m").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(".sp-design-container-m"), child: $(this), flag: true}, {target: $(".sp-design-content li"), flag: false}, $(".sp-design ol li"), $(this).index())
    }
});

//sp-color animate control
$(".sp-color .color-btn").click(function () {
    $(this).toggleClass("rotate90").parent().parent().toggleClass("show-color");
});

//sp-test animate control
$(".test-btn").click(function () {
    $(this).toggleClass("rotate270");
    var oH2 = $(".test-title h2");
    if (oH2.height() === 0) {
        oH2.animate({height: "62px", opacity: 1, marginBottom: "30px"}, 1000);
    } else {
        oH2.animate({height: 0, opacity: 0, marginBottom: 0}, 1000);
    }
    $(".test-content").toggleClass("test-content-expand");
});

//sp-charge animate control
$(".sp-charge-item .sp-slide-bar li").click(function () {
    displayHandler(null, $(".sp-charge-item"), null, $(this).index());
    slideHandler($(".sp-charge-imgbox-inner"), $(".sp-charge-item-m"), $(this).index());
});
$(".item-data-chart li").click(function () {
    displayHandler($(this), $(this).parent().siblings(".chart-line").find(".chart-item"), null, $(this).index())
});
$(".sp-charge-item").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(this), flag: false}, {target: $(".sp-charge-imgbox-inner"), child: $(".sp-charge-item-m"), flag: true}, $(".sp-charge-item .sp-slide-bar li"), $(this).index())
    }
});
$(".sp-charge-item-m").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(".sp-charge-imgbox-inner"), child: $(this), flag: true}, {target: $(".sp-charge-item"), flag: false}, $(".sp-charge-item .sp-slide-bar li"), $(this).index())
    }
});

//sp-performance animate control
$(".performance-inner-m li").click(function () {
    displayHandler($(this), null, null, $(this).index());
    slideHandler($(".inner-imgbox-m"), $(".img-item"), $(this).index())
});
$(".content-text-m").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(this), flag: false}, {target: $(".inner-imgbox-m"), child: $(".inner-imgbox-m .img-item"), flag: true}, $(".performance-inner-m ol li"), $(this).index())
    }
});
$(".inner-imgbox-m .img-item").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(".inner-imgbox-m"), child: $(this), flag: true}, {target: $(".content-text-m"), flag: false}, $(".performance-inner-m ol li"), $(this).index())
    }
});

//sp-special animate control
$(".sp-special-text li").click(function () {
    displayHandler($(this), null, null, $(this).index());
    slideHandler($(".sp-special-imgbox-inner"), $(".img-items"), $(this).index());
});
$(".sp-special-text-m li").click(function () {
    displayHandler($(this), null, $(".sp-special-text-m .sp-contentbox"), $(this).index());
    slideHandler($(".sp-special-imgbox-inner"), $(".img-items"), $(this).index());
});
$(".sp-special-text-m .sp-contentbox").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(this), flag: false}, {target: $(".sp-special-imgbox-inner"), child: $(".sp-special-imgbox-inner .img-items"), flag: true}, $(".sp-special-text-m ol li"), $(this).index())
    }
});
$(".sp-special-imgbox-inner .img-items").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(".sp-special-imgbox-inner"), child: $(this), flag: true}, {target: $(".sp-special-text-m .sp-contentbox"), flag: false}, $(".sp-special-text-m ol li"), $(this).index())
    }
});

//sp-network animate control
$(".sp-network-item li").click(function () {
    displayHandler($(this), $(".sp-network-item"), null, $(this).index());
    slideHandler($(".sp-itembox-m"), $(".sp-item-img"), $(this).index());
});
$(".sp-network-item").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        console.log($(this));
        touchEndHandler(e, {target: $(this), flag: false}, {target: $(".sp-itembox-m"), child: $(".sp-item-img"), flag: true}, $(".sp-network-item .sp-slide-bar li"), $(this).index())
    }
});
$(".sp-item-img").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(".sp-itembox-m"), child: $(this), flag: true}, {target: $(".sp-network-item"), flag: false}, $(".sp-network-item .sp-slide-bar li"), $(this).index())
    }
});

//sp-matters animate control
$(".sp-matters-content li").click(function () {
    displayHandler($(this), $(".sp-matters-content .sp-contentbox"), null, $(this).index());
    slideHandler($(".sp-matters-wrap"), $(".sp-matters-img"), $(this).index());
});
$(".sp-matters-content-inner .sp-contentbox").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(
            e,
            {target: $(this), flag: false},
            {target: $(".sp-matters-wrap"), child: $(".sp-matters-img"), flag: true},
            $(".sp-matters-content-inner ol li"),
            $(this).index()
        )
    }
});
$(".sp-matters-img").on({
    touchstart: function (e) {
        touchStartHandler(e);
    },
    touchend: function (e) {
        touchEndHandler(e, {target: $(".sp-matters-wrap"), child: $(this), flag: true}, {target: $(".sp-matters-content-inner .sp-contentbox"), flag: false}, $(".sp-matters-content-inner ol li"), $(this).index())
    }
});

