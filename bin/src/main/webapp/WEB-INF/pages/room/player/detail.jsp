<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../includes/includes.jsp"%>
<!DOCTYPE HTML>
<head>
 <link href="/r/c/user_detail.css" rel="stylesheet"/>
 <link href="/r/c/button.css" rel="stylesheet"/>
 
 
 
 
  <script src="/r/j-src/jquery/jquery-1.6.1.js"></script>
  <script src="/r/j-src/commons/model.js?v=0.5"></script>
  <script src="/r/j-src/commons/service.js?v=0.7"></script>
 <script src="/r/j-src/room/user_view.js?v=0.1"></script>
 <script src="/r/j-src/room/controller.js?v=1.0"></script>
   <script src="/r/j-src/util/httpUtil2.js"></script>
 
</head>

<body>
	
<!-- 个人信息,积分,金币 -->
<div class="detail_container">


    <div id="personal" class="personal">
        


         <input type="hidden" id="uid" value="${user.id}">
     
              <img src="${user.icon}" class="portrait" id="portrait_img"> 

            <div id="name" class="name">${user.name}</div>
            <span id="score" class="score"><b>${user.score}</b>分</span>
            <span id="money" class="money"><b>${user.money}</b>葡萄币</span>
           
       
        <div id="portrait_edit_container" class="portrait_edit_container">
            <span><span>输入图片地址,网页图片右键选择复制图片地址,本地图片需要临时上传,推荐使用:</span> <a href="http://tu.58task.com/" target="_blank">58广告任务网</a> </span>

            <div id="portrait_edit" class="portrait_edit border_show" contenteditable="true">http://</div>
            <a href="" id="portrait_view">预览</a>
        </div>
        
          <c:choose>
              <c:when test="${user.sign==''}">
                  <div id="sign" class="sign">我想我是一个杀手,我和你们不一样.我说我很孤独,因为你和他们一样.可是如果没有我,没有这样一个不一样的人,还有谁,能证明你和他们一样的</div>             
              </c:when>
              <c:otherwise>
                 <div id="sign" class="sign">${user.sign}</div>
              </c:otherwise>
            </c:choose>
     
      <div class="user_description">
            已连续打卡${punchCount}天,
            注册时间:
            <date:date pattern="yyyy年 MM月dd日  HH时mm分mm秒 "	 value="${user.createAt}"></date:date>,
			
           上次登录时间:
            <date:date pattern="yyyy年 MM月dd日  HH时mm分mm秒 "	 value="${user.loginAt}"></date:date>
            
            </div>

        <div class="edit">
        
         <c:choose>
              <c:when test="${user.id==selfID}">
                 <a href="" class="button green glass" id="user_edit" command="edit">编辑</a>        
              </c:when>
              <c:otherwise>                
              </c:otherwise>
            </c:choose>
        
       
        
        <a href=""  class="user_cancel"  id="user_cancel">Cancel</a>
        </div>


    </div>


    <div id="honour" class="honour">
        <h1>荣耀</h1>
        <ul>
            <li>
                <div class="honour_content">
                    <span class="honour_name">Mvp</span>
                    <span class="honour_count">5次</span>
                    <span class="honour_comment">一局游戏中表现最好的玩家</span>
                </div>

            </li>
            <li>
                <div class="honour_content">
                    <span class="honour_name">助攻王</span>
                    <span class="honour_count">15次</span>
                    <span class="honour_comment">出票票死杀手</span>
                </div>
            </li>
            <li>
                <div class="honour_content">
                    <span class="honour_name">清醒之心</span>
                    <span class="honour_count">4次</span>
                    <span class="honour_comment">三人局中正确在水民和杀手中做出判断</span>
                </div>
            </li>


        </ul>

    </div>
    <!-- 成就 -->
    <div id="achievement" class="achievement">
        <h1>成就</h1>
        <ul>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">新的旅程</span><span
                    class="achievement_comment">成功注册本站,奖励10000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">初来乍到</span><span
                    class="achievement_comment">第一次打卡报到,奖励5000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">常来看看</span><span
                    class="achievement_comment">本周内连续三天打卡报到,奖励10000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">小试牛刀</span><span
                    class="achievement_comment">成功完成第一局游戏,奖励2000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">首胜</span><span
                    class="achievement_comment">第一次在游戏中胜利,奖励4000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">乐不思蜀</span><span
                    class="achievement_comment">每天完成五局游戏,奖励20000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">一剑封喉</span><span class="achievement_comment">在游戏中最后一票票死杀手并取得胜利,奖励2000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">先发制人(水民)</span><span class="achievement_comment">领票杀手并取得胜利,奖励2000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">笑看天下</span><span class="achievement_comment">三人局中杀手最后出票获取胜利,奖励3000葡萄币</span>

            </li>
            <li class="achievement_complete">
                <img src="/r/i/achievement/default_achievement.jpg" class="achievement_img"><span
                    class="achievement_name notComplete">先发制人(杀手)</span><span class="achievement_comment">三人局中领票水民并获取胜利,奖励2000葡萄币</span>

            </li>

        </ul>

    </div>

</div>


</body>
</html>