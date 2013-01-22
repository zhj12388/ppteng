/**
 * Created with JetBrains WebStorm.
 * User: Administrator
 * Date: 13-1-22
 * Time: 上午10:33
 * To change this template use File | Settings | File Templates.
 */

(function (document) {
    $.fn.Drag = function () {
        var M = false;
        var Rx, Ry;
        var t = $(this);
        t.mousedown(function (event) {
            Rx = event.pageX - (parseInt(t.css("left")) || 0);
            Ry = event.pageY - (parseInt(t.css("top")) || 0);
            t.css("position", "absolute").css("cursor", "move").fadeTo(20, 0.5);
            M = true;
        }).mouseup(function (event) {
                M = false;
                t.fadeTo(20, 1);
            });
        $(document).mousemove(function (event) {
            if (M) {
                t.css({ top:event.pageY - Ry, left:event.pageX - Rx });
            }
        });
    }





})(document);



var musicUtil = {
    displayMusic:function () {


        var music = $("#music").text();
        if (music == "") {

        } else {
            var html = "<embed src='" + music + "' type='application/x-shockwave-flash' class='music_player' wmode='opaque'></embed>";
            $("#music_play").empty().html(html);

        }
        $("#music_play").Drag();
    },
    hideMusic:function (isHide) {
        if (isHide=="false") {
            $("#music_play").hide();
            $("#music_controller").attr("isHide",true);
            $("#music_controller").text("显示音乐盒");
        } else {

            $("#music_controller").attr("isHide",false);
            $("#music_controller").text("隐藏音乐盒");
            $("#music_play").show();
        }

    }


}
