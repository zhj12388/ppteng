<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../includes/includes.jsp"%>
<html>
<head>
<meta charset=utf-8">
<title>LogIn</title>
<link href="/r/css/all2.css" rel="stylesheet" type="text/css" />
<script src="/r/j-src/jquery/jquery-1.6.1.js"></script>
<script src="/r/j-src/listall/all.js?v=${frontVersion}"></script>
<script src="<%=request.getContextPath()%>/r/j-src/commons/service.js?v=${frontVersion}"></script>
<script src="<%=request.getContextPath()%>/r/j-src/util/httpUtil2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/r/j-src/punch/punch.js?version=${frontVersion}"></script>

<input type="hidden" value="${oldRoom}" id="oldRoom">
</head>

<body>


<div class="container">
	<div class="row section">
        <div class="span3 left-box">




            <div class="left-box-in">
                <h4>
                <small>欢迎你</small>,${uname}
                </h4>
                <img src="http://www.ptteng.com/${user.icon}" class="portrait"
                id="portrait_img" style="max-width: 16em; height: 8em">
                <br><br>
                <blockquote>
                <small id="money">金币 ${user.money}</small>
                <c:choose>
                <c:when test="${empty punchCount}">
                <div id="punchBox">
                    <div id="punchOver"></div>
                    <span class="btn btn-primary" id="punch">打卡</span>
                </div>
                </c:when>
                <c:otherwise>
                <small>连续打卡${punchCount}天,额外获取金币 ${punchCount}*100</small>
                </c:otherwise>
                </c:choose>
                </blockquote>
                <c:if test="${empty my_room}">
                <a href="" class="btn btn-primary" id="createRoom">创建房间</a>
                </c:if>
            </div>
        </div>



        <div class="span9">
            <c:if test="${rooms== null || fn:length(rooms) == 0}">
                <h1>现在么有房间</h1>
                <h1>但是你可以创建"简化/多人扫雷/虚拟电影院"~~</h1>             
                 <P>管理员可以自定义房间背景乐~~</p>
                 <P>管理员可以自定义神态~~</p>
                 <P>管理员在游戏结束可获取更多金币~~~</p>
            </c:if>
    <c:forEach items="${rooms}" var="room" begin="0" step="1" varStatus="status">
            <div class="row" style="margin-bottom: 30px;">

                <c:set var="version" value="${room.version}"></c:set>

                    <div class="span2">
                    <img src="http://www.ptteng.com/${users[room.createrID].icon}" alt="${users[room.createrID].name}" class="img-polaroid">
                    </div>
                    <div class="span7">
                        <h4>
                        <small>房间名:</small> ${status.index+1}.<a href="" rid="${room.id}" uid="${uid}">${room.name}[进入房间]</a>
                        </h4>
                        <blockquote>
                        <small> 纪元： <date:date pattern="yyyy年 MM月dd日  HH时mm分mm秒 " value="${room.createAt}"></date:date>
                        房主：<a href="/player/detail?uid=${room.createrID}"
                        target="_blank">${users[room.createrID].name}</a>
                        </small> <small> 版本[<span style="color: #4B0082"><%@ include
                            file="../version/show.jsp"%></span>],有玩家 [<span
                        style="color: #4B0082">${room_count[room.id]}</span>] 人 <c:if
                        test="${my_room.id==room.id}">,你在这里</c:if>
                        </small>
                        </blockquote>
                        <p class="text-success">签名: ${users[room.createrID].sign}</p>
                    </div>


            </div>
    </c:forEach>


        </div>
    </div>

	<input type="hidden" id="uid" value="${uid}" />
	</div>
    </div>
</body>
</html>
