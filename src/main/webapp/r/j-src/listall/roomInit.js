$(document).ready(function() {
    $("#name").focus();
    $("#roomSubmit").click(function(e) {
        if ($("#name").val() == "") {
            $("#name").val("Hello~~~~");

        } else {

            $("#roomSubmit").hide();
            $("#modal-close").hide();
            $("#roomSubmitHint").empty().text("正在为您创建房间,初始化需要2~3秒,请耐心稍候");

            e.submit();

        }
    })
});