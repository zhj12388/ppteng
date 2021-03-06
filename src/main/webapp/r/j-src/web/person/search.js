/**
 * Created with JetBrains WebStorm.
 * User: Administrator
 * Date: 13-3-14
 * Time: 下午7:23
 * To change this template use File | Settings | File Templates.
 */



var searchView = {


    getUid:function () {
        return $("#uid").val();

    },

    showHint:function (hint) {
        $("#hint").empty().text(hint);
    },
    disableCommit:function () {

        $("completeBtn").attr("disabled", true);
    },
    enableCommit:function () {
        $("completeBtn").attr("disabled", false);
    },
    showUser:function(data){

         var link="<a href='/player/detail?uid=" +data.id + "'>" + data.name + "</a>"
        $("#uname").empty().append(link);

        $("#icon").attr("src",data.icon);
        $("#icon").attr("alt",data.name);
    }


}

var searchService={
    search:function(uid){
        ajaxJson("/player/search?", "post", {uid:uid}, searchService.showAjaxResult, 5000, "json");
    },
    reset:function(uid){
           ajaxJson("/player/reset?", "post", {uid:uid}, searchService.showRestResult, 5000, "json");
       },
    showAjaxResult:function(data){
        if(data.code==0){
            searchView.showUser(data);
        }else{
            console.log(data.message);
            searchView.showHint("不存在的用户啊");
        }

    },
    showRestResult:function(data){
           if(data.code==0){
               searchView.showHint("密码已重置为ptteng");
           }else{
               console.log(data.code);
               searchView.showHint(data.code+"无权限/不存在的用户");
           }

       }

}
$(document).ready(function () {

    headView.highLight("person");

    leftView.highLight("leftNav_search");
    $("#uid").blur(function () {
          var value = searchView.getUid();
          if (/^\d+$/.test(value)) {
              searchView.showHint("");
          } else {
              searchView.disableCommit();
              searchView.showHint("葡萄号只能是数字");
          }

      });


    $("#completeBtn").click(function () {
        var value = searchView.getUid();
         var result = searchService.search(value);
      //  searchView.showResult(result);

         return false;

     });


    $("#resetBtn").click(function () {
         var value = searchView.getUid();
          var result = searchService.reset(value);
       //  searchView.showResult(result);

          return false;

      });

})


