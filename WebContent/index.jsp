<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="${path}css/index.css" />
<link rel="stylesheet" href="${path}css/all.css" />
</head>

<body>
	<div class="pageTop">
		<div class="topLogo">LOGO</div>
		<div class="topMenu">
			<ul>
				<li>估分选大学</li>
				<li><a href="${path}scoSecPro/北京/2015/理科/500//不限/不限">估分选专业</a></li>
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
	<div class="pageCenter">
		<div class="centerInner">
			<ul>
				<li style="background-image: url(${path}img/1.jpg);"></li>
				<li style="background-image: url(${path}img/2.jpg);"></li>
				<li style="background-image: url(${path}img/3.jpg);"></li>
			</ul>
		</div>
		<div class="contBo">
			<div class="prePage"></div>
			<div class="nextPage"></div>
		</div>
		<div class="cenContent">
			<p class="conTitle">2017高考志愿模拟填报</p>
			<div class="conProvin">
				<p>省份</p>
				<input type="text" name="provinName" placeholder="请输入省份" />
			</div>
			<div class="conType">
				<p>文理</p>
				<div class="typeInfo">
					<div class="culD">文科</div>
					<div class="secD">理科</div>
				</div>
			</div>
			<div class="conScore">
				<p>分数</p>
				<input type="text" name="scoreInfo" placeholder="请输入分数" />
			</div>
			<div class="conRank">
				<p>名次</p>
				<input type="text" name="scoreInfo" placeholder="请输入名次" />
			</div>
			<p class="conTig">分数名次至少填一项，全填更精确</p>
			<div class="conSub" style="border: 1px solid #EE5909;">开始填报</div>
		</div>
	</div>
	<div class="pageBottom"></div>
	<div class="footer"></div>
</body>
</html>