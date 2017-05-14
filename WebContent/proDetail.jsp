<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basePath);
%>
<!DOCTYPE html>
<html>
<head>
<title>高考志愿填报参考系统</title>
<meta charset="UTF-8" />
<script type="text/javascript" src="${path}js/jquery-1.7.1.min.js"></script>
<link rel="stylesheet" href="${path}css/all.css" />
<link rel="stylesheet" href="${path}css/proDetail.css" />
<script type="text/javascript">
	$(document).ready(function() {
		console.log("${result.profession}")
		
	})
</script>
</head>
<body>
	<%@include file="top.jsp" %>
	<div class="position">
		<div>
			<a href="${path}index.jsp">首页 > </a><a href="${path}proRank">专业排行榜  > </a>${result.profession.proName}
		</div>
	</div>
	<div class="pageCenter">
		<div>
			${result.profession.proDetail}
		</div>
	</div>
	<div class="pageBottom"></div>
	<%@include file="footer.jsp" %>
</body>

</html>