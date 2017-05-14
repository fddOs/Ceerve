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
<script type="text/javascript">
	$(document).ready(function() {
		$("#conSub").click(function() {
			var province = $("#province").val();
			var cdc = "";
			$(".typeInfo>div").each(function() {
				if ($(this).hasClass("selected")) {
					cdc = $(this).html();
				}
			})
			var score = $("#score").val();
			console.log(province);
			console.log(cdc);
			console.log(score);
			if (province == "") {
				alert("请输入省份");
			}
			else if (cdc == "") {
				alert("请输入文理科");
			}
			else if (score == "") {
				alert("请输入成绩");
			}
			else {
				location.href = "${path}selectSch/" + province + "/" + cdc + "/" + score + "/不限/不限/1";
			}
		})
	})
</script>
</head>

<body>
	<%@include file="top.jsp" %>
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
				<input type="text" name="provinName" id="province" placeholder="请输入省份" />
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
				<input type="number" name="scoreInfo" id="score" placeholder="请输入分数" />
			</div>
			<!-- <div class="conRank">
				<p>名次</p>
				<input type="text" name="scoreInfo" placeholder="请输入名次" />
			</div>
			<p class="conTig">分数名次至少填一项，全填更精确</p> -->
			<div class="conSub" id="conSub" style="border: 1px solid #EE5909;">开始填报</div>
		</div>
	</div>
	<div class="pageBottom">
	<ul class="testTitle">
			<li>
				<div class="liT" style="margin-left: 6px;">1</div>
				<div class="liC">注意事项</div>
				<div class="liB">
					根据您的实际情况作答<br>并以最快速度完成每道问题
				</div>
			</li>
			<li>
				<div class="liT" style="margin-left: 6px;">2</div>
				<div class="liC">注意事项</div>
				<div class="liB">选项没有"对"与"错"之分</div>
			</li>
			<li>
				<div class="liT" style="margin-left: 6px;">3</div>
				<div class="liC">注意事项</div>
				<div class="liB">
					选择更接近您平时的<br>感受或行为的那项
				</div>
			</li>
			<li>
				<div class="liT" style="margin-left: 6px;">4</div>
				<div class="liC">注意事项</div>
				<div class="liB">
					选择您是怎么样做的<br>而不要选择您想要怎样、以为会怎样<br>或者认为哪样更好
				</div>
			</li>
		</ul></div>
	<%@include file="footer.jsp" %>
</body>
</html>