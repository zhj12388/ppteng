<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../includes/includes.jsp"%>
<tiles:insertDefinition name="commonCSSImport" />

<title>${room.name}-虚拟电影院-葡萄藤轻游戏</title>

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


<!--left list-->
<div class="sidebar-nav" id="sidebar-nav">
    <ul class="nav nav-list" id="playerList">


    </ul>
    
     <div class="sidebar-toggle" id="sidebar-toggle">
    -
    </div>
</div>

<!--main-->
<div class="content" id="content">
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span7">
            
            <div class="tabbable">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#video_area" data-toggle="tab">电影</a></li>
                               
                    <li><a href="#setting_area" data-toggle="tab">设置</a></li>
                    
                    <li><a href="#help_area" data-toggle="tab">帮助</a></li>
                      
                     
                 
                </ul>
                <div class="tab-content">
                   
                    
                    <div class="tab-pane active" id="video_area">
                        <!--新添视频部分-->
                            <div class="video">
                                <blockquote>
                                    <p>葡萄藤虚拟电影院</p>
                                    <small>这样的一个夜晚.有你有我.</small>
                                 
                                </blockquote>
                                <div class="video-player" id="outer">
                                    <!--从网页中找到的部分-->
                                    <embed src="http://player.youku.com/player.php/sid/XNTI2NjI3MTY4/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                                </div>
                            </div>
                            <!--新添视频部分结束-->
                    </div>
                    <div class="tab-pane" id="setting_area">
                       
                    </div> 
                    
                    <div class="tab-pane" id="help_area">
							<div class="hero-unit">

								
								<p>
									<a
										href="http://bbs.ptteng.com/forum.php?mod=viewthread&tid=94"
										class="text-warning" target="_blank">了解如何播放视频,请点击这里&raquo;</a>
								</p>
								


								<p class="text-error"></p>

								<p class="text-success">简要帮助:</p>
								<p class="text-success">1.虚拟电影院是用来和朋友一起看电影</p>
								<p class="text-success">2.多数视频网站并不提供接口支持,所以大家看的电影是无法同步的</p>
							
							</div>






						</div>
                       
                    
                      <!-- advertise -->
                     
                    
                    
                    
                    <!-- end of tab-content -->                
                   
                    
                    
                </div>
            </div>
           </div>
           
             <div  class="span5">
             
                <div class="tabbable death">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#game_area" data-toggle="tab">小树林</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active lined-paper" id="game_area">
                       
                        </div>
                    </div>
                </div>
          
             </div>
        </div>
    </div>
</div>
	
	
	
	
	
	
	
<tiles:insertDefinition name="commonJSImport" />

	<script src="/r/j-src/game/video/video.js?v=${frontVersion}"></script>



	
