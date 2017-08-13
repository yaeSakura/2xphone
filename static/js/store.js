/**
 * Created by Administrator on 2017/7/16.
 */
// var initscreenW = $(window).width();
// if(initscreenW<767){
//     $(".subnav-container").addClass("dn");
// }
var arrigroup = $(".subnav-container i");
$(window).resize(function(){
    var windwidth = $(window).width();
    var arrimg = $(".hero-goods-wrap img");
    var arrsrc = ["../images/store/ChargerBundle0620-small.jpg","../images/store/Bundle0620-small.jpg","../images/store/Backpack0620-small.jpg"];
    if(windwidth<=767){
        for(var i=0;i<arrimg.length;i++){
            $(arrimg[i]).attr('src',arrsrc[i]);
        }
        if(windwidth<=375){
            $(".subnav-container").addClass("dn");
        }
    }
});
$(window).scroll(function() {
    var windwidth = $(window).width();
    if(windwidth>375){
        var scolltop = $(this).scrollTop();
        if(scolltop>=80){
            arrigroup.addClass("scale0");
            $(".second-header-nav").css({position:"fixed",top:"-85px"});
        }
        else {
            arrigroup.removeClass("scale0");
            $(".second-header-nav").css({position:"relative",top:"0"});
        }
    }
});
var gflag = 1;
$(".subnavsmall").click(function () {
    var screenH = $(window).height();
    if(gflag==1){
        $("body").css({height:screenH,overflow:"hidden"});
        $(".second-header-nav").css({height:screenH,position:"absolute",top:"0"});
        $(".subsmall-menu").css("height",screenH-50+"px");
        $(".subsmall-menu").slideDown();
        $(".smallsubnav h3").show();
        gflag=2;
    }
    else if(gflag==2){
        $("body").css({height:screenH,overflow:"visible"});
        $(".second-header-nav").css({position:"relative"});
        $(".second-header-nav").animate({height:"50px"},400);
        $(".subsmall-menu").slideUp();
        $(".smallsubnav h3").hide();
        gflag=1;
    }

});