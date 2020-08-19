$(function () {
    var slideShow = $("#slide"); //获取最外层框架的名称
    var ul = slideShow.find("ul");
    var showNumber = slideShow.find(".showNav span"); //获取按钮
    var oneWidth = slideShow.find("ul li").eq(0).width(); //获取每个图片的宽度

    showNumber.bind("click", function () {
        clearInterval(sid);
        var index = $(this).index(); //获取点击按钮的索引值
        move(index);
        sid = setInterval(moveAniamte, 2000);
    });
    var sindex = 0;
    var sid = setInterval(moveAniamte, 2000);

    function moveAniamte() {
        if (sindex == slideShow.find(".showNav span").length) {
            sindex = 0;
        }
        move(sindex);
        sindex++;
    }
    function move(index) {
        var objspan = slideShow.find(".showNav span").eq(index);
        objspan.addClass("active").siblings().removeClass("active");
        ul.animate({
            "left": -oneWidth * index,
        });
        sindex = index;
    }

    //这部分是图片轮播的代码
    $('#carousel ul').carouFredSel({
        prev: '#prev',
        next: '#next',
        scroll: 2000
    });
});