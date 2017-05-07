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
	<div class="pageTop">
		<div class="topLogo">LOGO</div>
		<div class="topMenu">
			<ul>
				<li>估分选大学</li>
				<li><a href="${path}scoSecPro/北京/2015/理科/500/不限/不限/不限/1">估分选专业</a></li>
				<li><a href="${path}scoSecSch/清华大学/北京/理科/本科一批">选大学估考分</a></li>
				<li><a href="${path}schRank/不限-不限-不限/1">大学排行榜</a></li>
				<li><a href="${path}proRank">专业热度榜</a></li>
				<li><a href="${path}OccuTest.jsp">专业测评</a></li>
			</ul>
			<ul>
				<li>登录</li>
				<li>注册</li>
			</ul>
		</div>
	</div>
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
	<div class="footer"></div>
</body>
</html>