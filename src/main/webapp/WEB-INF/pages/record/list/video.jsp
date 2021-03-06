<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../includes/includes.jsp"%>

<input type="hidden" id="version" value="${version}"></input>
 <div class="span9">
<div class="container" >
	<c:forEach items="${records}" var="record" begin="0" step="1"
		varStatus="status">
	 <c:set var="version" value="${record.room.version}"></c:set>
    <div class="row"  style="margin-top:1em;margin-bottom:1em">
        <div class="span2">
            <img src="http://www.ptteng.com${users[record.room.createrID].icon}" alt="${users[record.room.createrID].name}" class="img-polaroid" style="max-width:8em;height:8em" >
        </div>
        <div class="span10">
            <h3 class="text-error"><a href="/record/enter?recordID=${record.id}"> ${(page-1)*size+status.index+1}.${record.room.name}</a></h2>
            <blockquote>
                <p>纪元：
						<date:date pattern="yyyy年 MM月dd日  HH时mm分mm秒 "
								value="${record.createAt}"></date:date>
				房主：<a href="/player/detail?uid=${record.room.createrID}"
								target="_blank">${users[record.room.createrID].name}</a>
				</p>
               
            </blockquote> 
            <embed src="${record.room.setting.setting['视频地址']}" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                       
            
        </div>
    </div>
    </c:forEach>
</div>

<div class="pagination pagination-centered">
  <ul>
    <li><a href="/record/list?version=video_1&page=${page-1}&size=${size}&uid=${uid}" id="pagePrev">Prev</a></li>   
      <li class="active"><a href="/record/list?version=video_1&page=${page}&size=${size}&uid=${uid}">${page}</a></li>
    <li><a href="/record/list?version=video_1&page=${page+1}&size=${size}&uid=${uid}" id="pageNext">Next</a></li>
  </ul>
</div>
</div>
	
	<input type="hidden" id="uid" value="${uid}" />

<script src="/r/j-src/web/record/list.js"></script>
