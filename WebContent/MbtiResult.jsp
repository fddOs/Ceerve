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
<script src="${path}js/index.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="${path}css/all.css" />
<link rel="stylesheet" href="${path}css/mbtiResult.css" />
<script type="text/javascript">
	$(document).ready(function() {
	})
</script>
</head>

<body>
	<%@include file="top.jsp" %>
	<div class="position">
		<div>
			<a href="${path}index.jsp">首页 > </a><a href="${path}OccuTest.jsp">专业测评 > </a><a href="${path}MbtiTest.jsp">MBTI职业性格测试 > </a>MBTI测试结果
		</div>
	</div>
	<div class="photos">
		<img src="${path}img/in1.png" />
	</div>
	<div class="pageCenter">
		<div class="testTitle">MBTI职业性格测试</div>
		<div class="testContent">
			<h3>
				您的MBTI性格是<span>${result.result.param}</span>${result.result.summa}</h3>
			<div class="descri">${result.result.descr}</div>
			<div>
				<h3>总体描述</h3>
				<ul>
					<c:forEach var="res" items="${result.result.result}" varStatus="varStatus">
						<li>${varStatus.index+1}.${res}</li>
					</c:forEach>
				</ul>
			</div>
			<div class="job">${result.result.occur}</div>
		</div>
	</div>
	<div class="pageBottom"></div>
	<%@include file="footer.jsp" %>
</body>
</html>