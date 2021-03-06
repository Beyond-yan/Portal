<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${videoName}－交通视频-重庆市交通委员会</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="icon" href="${pageContext.request.contextPath}/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/news.css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script type="text/javascript"
	src="${contentServer }resource/flowplayer-3.2.14/flowplayer-3.2.11.min.js"></script>
</head>

<script type="text/javascript">
	$(function() {	
		//var isIphone = navigator.userAgent.indexOf('iPhone') >= 0;
		//if (isIphone) {
		//	window.location='${videoPath}';
		//} else {
		//}	
		var ua = navigator.userAgent;
		var ipad = ua.match(/(iPad).*OS\s([\d_]+)/),
			isIOS = /iPad|iPhone|iPod/.test(navigator.platform),
			isAndroid = ua.match(/(Android)\s+([\d.]+)/),
			isMobile = isIOS || isAndroid;
		if(isMobile) {
			$('#htmlPlayer').show();
		}else {
			$('#falsePlayer').show();
		}
		
	})
</script>

<body onload="loadExternalResource()">
	<div class="bg_w1284">
		<div class="wrap">
			<!--header Start-->
			<c:import url="/index.do?action=getHeader"></c:import>
			<!--header End-->

			<!--content Start-->
			<div class="content">
				<div class="clearfix">
					<div class="breadCutNav">
						<b class="icon_home"></b> <span>当前位置：</span> <a
							href="${pageContext.request.contextPath}/index.html">首页</a> <span>
							&gt;</span> <a
							href="${pageContext.request.contextPath}/videoNewsList.html">交通视频</a>
						<span> &gt;</span> <a href="javascript:;" class="cur">视频详情</a>
					</div>
					<div class="newsDetail">
						<h2>${videoName}</h2>
						<p class="dotLine_2px"></p>
						<ul class="tip">
							<li class="al_l">${entryDate }&nbsp;&nbsp;&nbsp;视频来源：${videoNewsSource }</li>
							<li class="al_c">&nbsp;</li>
							<%@ include file="/WEB-INF/pages/common/share.jsp"%>
						</ul>
						<div id="falsePlayer" style="display: none;" >
							<a href="${videoPath}" style="display: block; width: 810px; height: 460px"
							id="player01"> </a>
							<script type="text/javascript">
								flowplayer("player01", "${player}",{clip:{scaling:"fit"}});
							</script>
						</div>
						<div id="htmlPlayer" style="text-align: center; display: none;" >
							<video src="${videoPath}" width="820" height="480" controls="controls" style="margin: auto;" >
								您的设备暂不支持HTML5 !
							</video>
						</div>

					</div>
				</div>
				<c:import url="/videoNews.do?action=getVideoSubList"></c:import>
				<!--partC Start-->
				<%@ include file="/WEB-INF/pages/common/friendLink.jsp"%>
				<!--partC End-->
			</div>
			<!--content End-->
		</div>
		<!--footer Start-->
		<%@ include file="/WEB-INF/pages/common/footer.jsp"%>
		<!--footer End-->
	</div>
</body>
</html>