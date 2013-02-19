//调用QC.Login方法，指定btnId参数将按钮绑定在容器节点中

var loginView = {
    isLogin:function () {
        var uid = $("#uid").val();
        if (uid) {

            return true;
        } else {
            return false;
        }
    },
    getType:function () {
        return $("#type").val();
    }

}


var type = parseInt(loginView.getType());
if (loginView.isLogin()) {

} else {
//qq
    QC.Login({btnId:"qqLoginBtn"}, function (oInfo, oOpts) {
        console.log("qq login");
        $("#type").val(1);
        QC.Login.getMe(function (openId, accessToken) {

            QC.Login.signOut();
            login(1, openId, oInfo.nickname);


        })

    });
}
//sina
if (loginView.isLogin()) {

} else {

    WB2.anyWhere(function (W) {
        W.widget.connectButton({
            id:"wb_connect_btn",
            type:'5,2',
            callback:{
                login:function (o) {    //登录后的回调函数

                    WB2.logout(function () {
                        //callback function
                    });
                    login(2, o.idstr, o.screen_name);


                    // alert("login: " + o.screen_name)
                },
                logout:function () {    //退出后的回调函数
                    // alert('logout');
                }
            }
        });
        $("#type").val(2);
    })
}

var login = function (type, openID, name) {
    ajaxJson("/player/openID.do?", "post", {type:type, openID:openID, name:name}, null, 5000, "json");
    window.location.href = "/";
}


$(document).ready(function () {

    $("#punch").bind('click', function () {

        var uid = $("#uid").val();

        $.ajax({
            url:"/player/punch.do",
            data:{},
            type:"post",
            dataType:"json",
            success:function (data) {
                window.location.href = "/";
            }
        })
        /**/
        return false;
    })
})
