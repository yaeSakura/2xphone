/**
 * Created by Administrator on 2017/7/28.
 */
//点赞功能
$(".i-like").click(function () {
    $(this).toggleClass("active");
    var oCount = $(this).siblings(".like-count");
    var nCount = parseInt(oCount.text());
    if ($(this).hasClass("active")) {
        oCount.text(nCount + 1);
    } else {
        oCount.text(nCount - 1);
    }
});
//将点赞过的文章ID发送至后台
window.onbeforeunload = function () {
    var aIds = {};
    var id;
    var aArticleCells = $(".i-like.active").parents(".article-cell");
    for (var i = 0; i < aArticleCells.length; i++) {
        id = {"id": aArticleCells.eq(i).attr("id")};
        aIds[i] = id;
    }
    console.log(aIds[0]);
    // if (aIds){
        $.ajax({
            url: "www.hzqsakura.cc/blog/collection",
            type: "POST",
            data: aIds,
            success:function () {
                alert("aaaa");
                console.log("2222");
            }
        });
    // }
};