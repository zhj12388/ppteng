
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../includes/includes.jsp"%>
<title>${room.name}-多人扫雷-葡萄藤轻游戏</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/r/css/mine/mine.css?v=${frontVersion}">


<input type="hidden" id="uid" value="${uid}">
<!-- 玩家ID -->
<input type="hidden" id="rid" value="${room.id}">
<!-- 房间ID -->
<input type="hidden" id="version" value="${room.version}">
<input type="hidden" id="assign" value="">
<!-- 玩家角色 -->
<input type="hidden" id="time" value="over">
<!-- 游戏时间白天黑夜 -->
<input type="hidden" id="createrID" value="${room.createrID}">
<input type="hidden" id="type" value="${type}">

<input type="hidden" id="recordID" value="${record.id}">
<input type="hidden" id="recordTime" value="${record.time}">
<input type="hidden" id="first" value="${first}">
<div id="stageShow" class="hide">${stageShow}</div>
<div id="contents" class="hide">${contents}</div>
<div id="escape" class="hide"></div>


<!--main-->
<div class="content" id="content">


	<div class="tabbable">
		<ul class="nav nav-tabs">
			<li><a href="#player_list" data-toggle="tab">玩家</a></li>
			<li class="active"><a href="#mine_area" data-toggle="tab">多人扫雷</a></li>
			<li class=""><a href="#game_area" data-toggle="tab" auto-bottom>聊天</a></li>

			<li><a href="#setting_area" data-toggle="tab">设置</a></li>
			<li><a href="#music_area" data-toggle="tab">音乐</a></li>
			<li><a href="#help_area" data-toggle="tab">帮助</a></li>


		</ul>
		<div class="tab-content">

			<div class="tab-pane" id="player_list">
			<tiles:insertDefinition name="playerList" />
			</div>

			<div class="tab-pane active" id="mine_area">
				<div class="outer">
					<div class="inner" id="inner"></div>

				</div>
			</div>
			<div class="tab-pane" id="setting_area"></div>

			<div class="tab-pane" id="music_area">
				<tiles:insertDefinition name="musicList" />



			</div>

			<div class="tab-pane" id="help_area">
				<div class="hero-unit">

					<p>多人扫雷协作版</p>


				</div>


			</div>
			<div class="tab-pane" id="game_area"></div>


			<!-- advertise -->




			<!-- end of tab-content -->



		</div>
	</div>
</div>






<tiles:insertDefinition name="commonJSImport" />



<!--侦测键盘-->

<script type="text/javascript"
	src="/r/j-src/framework/audio/audio.min.js"></script>

<script src="/r/j-src/framework/angular/angular.min.js"></script>

<script
	src="<%=request.getContextPath() %>/r/j-src/web/music/music.js?v=${frontVersion}"></script>

<script src="/r/j-src/game/mine/mine.js?v=${frontVersion}"></script>

<script
	src="<%=request.getContextPath() %>/r/j-src/game/commons/model.js?v=${frontVersion}"></script>
<script
	src="<%=request.getContextPath() %>/r/j-src/game/commons/service.js?v=${frontVersion}"></script>
<script
	src="<%=request.getContextPath() %>/r/j-src/game/commons/base.js?v=${frontVersion}"></script>
<script
	src="<%=request.getContextPath() %>/r/j-src/game/commons/action.js?v=${frontVersion}"></script>


<script
	src="<%=request.getContextPath() %>/r/j-src/game/commons/view.js?v=${frontVersion}"></script>
<script
	src="<%=request.getContextPath() %>/r/j-src/util/comet.js?v=${frontVersion}"></script>
<script
	src="<%=request.getContextPath() %>/r/j-src/util/httpUtil2.js?v=${frontVersion}"></script>
<script
	src="<%=request.getContextPath() %>/r/j-src/util/timeUtil.js?v=${frontVersion}"></script>

<script
	src="<%=request.getContextPath() %>/r/j-src/web/foot/foot.js?v=${frontVersion}"></script>




