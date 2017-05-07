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
<link rel="stylesheet" href="${path}css/all.css" />
<link rel="stylesheet" href="${path}css/occuTest.css" />
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
			<a href="${path}index.jsp">首页 > </a>专业测评
		</div>
	</div>
	<div class="photos">
		<img src="${path}img/in1.png" />
	</div>
	<div class="pageCenter">
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
		</ul>
		<ul class="testType">
			<li>
				<div class="imgLeft">
					<img src="${path}img/inli1.png" />
				</div>
				<div class="textCenter">
					<a href="javascript:;">MBTI职业性格测试</a>
					<div>
						MBTI的全名是Myers-Briggs Type Indicator。它是一种迫选型、自我报告式的性格评估理论模型，用以衡量和<br> 描述人们在获取信息、作出决策、对待生活等方面的心理活动规律和性格类型。
					</div>
				</div>
				<div class="boRight">
					<a class="testButtom" href="${path}MbtiTest.jsp">开始测试</a>
				</div>
			</li>
			<li>
				<div class="imgLeft">
					<img src="${path}img/inli2.png" />
				</div>
				<div class="textCenter">
					<a href="javascript:;">霍兰德职业兴趣测试</a>
					<div>
						霍兰德职业兴趣测试完整版测试由美国著名职业指导专家霍兰德编制，主要用于确定被测试者的职业兴趣倾向,进<br>而用于指导被测试者选择适合自身职业兴趣的专业发展方向和职业发展方向。霍兰德提出的6种基本职业类型
					</div>
				</div>
				<div class="boRight">
					<a class="testButtom" href="${path}HlandeTest.jsp">开始测试</a>
				</div>
			</li>
		</ul>
	</div>
	<div class="pageBottom"></div>
	<div class="footer"></div>
</body>
</html>