<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib uri="/WEB-INF/userTag/PortalPager.tld" prefix="ut"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title></title>
<link rel="icon" href="${pageContext.request.contextPath}/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/news.css" />

</head>
<body style="background: white;">
	<!--mainList Start-->
	<div class="mainList" id="lH" style="width:100%">
		<div class="breadCutNav">
			<b class="icon_home"></b> <span>当前位置：</span> <a
				href="${pageContext.request.contextPath}/index.html"  target="top">首页</a> <span>
				&gt;</span> <a href="${pageContext.request.contextPath}/openCatalog/init_/openCatalog/f1e8c2db-9e92-4a1e-a1cb-48569fa7f308.html" class="cur"  target="_top">政务公开</a><span> &gt;</span> <a
				href="javascript:;" class="cur">${topName}</a>
		</div>
		<div class="trafficNews list">
			<h2>${topName}</h2>
			<ul>
				<c:forEach items="${catalogList}" var="Catalog" varStatus="newsID">
					<li><b class="icon_noteBook"></b> <a target="_self"
						style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden;"
						href="${pageContext.request.contextPath}/openCatalog/${Catalog.newsID}.html"
						title="${Catalog.newsTitle}"> ${Catalog.newsTitle}</a> <span>${Catalog.entryDate}</span></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<!--mainList End-->
	
<script type="text/javascript">

</script>
</body>
</html>
