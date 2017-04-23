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
<script type="text/javascript" src="${path}js/echarts.js"></script>
<link rel="stylesheet" href="${path}css/all.css" />
<link rel="stylesheet" href="${path}css/scoSecSch.css" />
<link rel="stylesheet" href="${path}css/schRank.css" />
<script type="text/javascript">
	$(document).ready(
			function() {
				var url = decodeURI(window.location.href)
				var paramList = url.split("/")
				var paramBath = paramList.pop();
				var paramCdc = paramList.pop();
				var paramPro = paramList.pop();
				var paramSch = paramList.pop();
				console.log(eval("(" + '${result}' + ")"))
				var myChart = echarts.init(document.getElementById("scoreGra"));
				var year = new Array()
				var fenCha = new Array()
				var max = 0
				var min = 750
				var sumFencha = 0
				var result = eval("(" + '${result}' + ")").Result
				var info = eval("(" + '${result}' + ")").Info
				$(".selectBath>div>input").val(paramBath)
				$(".selectProvin>span").text(paramPro)
				$("#schNameIpt").val(paramSch)
				$(".selectBath>ul>li").click(function() {
					paramBath = $(this).find("a").text()
				})
				if (paramCdc == "文科") {
					$(".wen").css("backgroundColor", "#ee5909")
					$(".wen").css("color", "#fff")
				}
				else {
					$(".li").css("backgroundColor", "#ee5909")
					$(".li").css("color", "#fff")
				}
				$(".wen").click(function() {
					$(".li").css("backgroundColor", "#f7f7f7")
					$(".li").css("color", "#333")
					$(this).css("backgroundColor", "#ee5909")
					$(this).css("color", "#fff")
					paramCdc = $(this).text()
				})
				$(".li").click(function() {
					$(".wen").css("backgroundColor", "#f7f7f7")
					$(".wen").css("color", "#333")
					$(this).css("backgroundColor", "#ee5909")
					$(this).css("color", "#fff")
					paramCdc = $(this).text()
				})
				$(".selectBath>ul>li").click(function() {
					paramBath = $(this).find("a").text()
					$(".selectBath>div>input").val(paramBath)
				})
				$(".selectBath").click(function() {
					if ($(this).css("height") == "162px") {
						$(this).css("height", "30px")
					}
					else {
						$(this).css("height", "162px")
					}
					$(this).css("transition", "height 0.5s ease")
					$(".selectBath>ul>li").css("border-bottom", "1px solid #ee5909")
					$(".selectBath>ul>li").last().css("border-bottom", "none")
					$(".selectBath>ul>li").first().css("border-top", "1px solid #ee5909")
				})
				//var param = "${path}hisScore/" + info.scName + "/"
				$(".selectPro").click(function() {
					if ($(".proList>ul").children().length == 0) {
						$.ajax({
							url : "${path}/getLocations",
							data : "",
							dataType : "json",
							success : function(data) {
								data = eval("(" + data + ")")
								for (var i = 0; i < data.Locations.length; i++) {
									$(".proList>ul").append("<li class='unselected'><a>" + data.Locations[i].proviName + "</a></li>")
									if (data.Locations[i].proviName == "黑龙江") {
										$(".proList>ul>li:eq(" + i + ")").css("margin-left", "5px")
									}
									else if (data.Locations[i].proviName == "内蒙古") {
										$(".proList>ul>li:eq(" + i + ")").css("margin-left", "-1px")
									}
									$(".proList>ul li").click(function() {
										paramPro = $(this).find("a").text()
										$(".selectProvin>span").text(paramPro)
									})
								}
								if ($(".selectPro>img").css("display") == "none") {
									$(".selectPro>img").css("display", "inline-block")
									$(".proList").css("display", "block")
								}
								else {
									$(".selectPro>img").css("display", "none")
									$(".proList").css("display", "none")
								}
							}
						})
					}
					else {
						if ($(".selectPro>img").css("display") == "none") {
							$(".selectPro>img").css("display", "inline-block")
							$(".proList").css("display", "block")
						}
						else {
							$(".selectPro>img").css("display", "none")
							$(".proList").css("display", "none")
						}
					}
				})
				if (result.length == 0) {
					$(".scoreGra").html("暂无数据")
					$(".scoreGra").css("height", "90px")
				}
				else {
					for (var i = 0, j = 0; i < result.length; i++) {
						if (result[i].bath == paramBath) {
							year[j] = result[i].year
							fenCha[j] = result[i].fensCha
							j++
						}
					}
					for (var i = 0; i < fenCha.length; i++) {
						if (fenCha[i] != -1) {
							max = Math.max(max, fenCha[i])
							min = Math.min(min, fenCha[i])
							sumFencha = sumFencha + fenCha[i]
						}
						else {
							fenCha[i] = "--"
						}
					}
					// 指定图表的配置项和数据
					option = {
						title : {
							text : '近十一年录取线差'
						},
						tooltip : {
							trigger : 'axis'
						},
						legend : {
							data : [ '录取线差' ]
						},
						toolbox : {
							show : true,
							feature : {
								dataZoom : {
									yAxisIndex : 'none'
								},
								dataView : {
									readOnly : false
								},
								magicType : {
									type : [ 'line', 'bar' ]
								},
								restore : {},
								saveAsImage : {}
							}
						},
						xAxis : {
							type : 'category',
							boundaryGap : true,
							data : year
						},
						yAxis : {
							type : 'value',
							axisLabel : {
								formatter : '{value} 分'
							},
							min : min - 5,
							max : max + 5
						},
						series : [ {
							name : '录取线差',
							type : 'line',
							data : fenCha,
							markPoint : {
								data : [ {
									type : 'max',
									name : '最大值'
								}, {
									type : 'min',
									name : '最小值'
								} ]
							},
							markLine : {
								data : [ {
									type : 'average',
									name : '平均值'
								} ]
							}
						} ]
					};
					// 使用刚指定的配置项和数据显示图表。
					myChart.setOption(option);

					$(".calScore").html(
							paramSch + "在" + paramPro + paramBath + "的近十一年的平均录取线差为<span>" + Math.floor(sumFencha / fenCha.length)
									+ "</span>,您的成绩需要超过录取线<span>" + Math.floor(sumFencha / fenCha.length) + "</span>分加油噢！")

				}

				$(".sub").click(
						function() {
							if ($("#schNameIpt").val() != "") {
								window.location.href = "${path}scoSecSch/" + $("#schNameIpt").val() + "/" + paramPro + "/" + paramCdc + "/"
										+ paramBath
							}
							else {
								alert("请输入学校名称！")
							}
						})
			})
</script>
</head>
<body>
	<div class="pageTop">
		<div class="topLogo">LOGO</div>
		<div class="topMenu">
			<ul>
				<li>估分选大学</li>
				<li>估分选专业</li>
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
			<a href="${path}index.jsp">首页 > </a>估分选大学
		</div>
	</div>
	<div class="pageCenter">
		<div class="stTitle">
			<div class="selectPro">
				<div class="selectProvin">
					<span>省份</span><img alt="" src="${path}img/arrow_down.png">
				</div>
				<img alt="" src="${path}img/arrow_up.png">
				<div class="proList">
					<ul>
					</ul>
				</div>
			</div>
			<div class="selectCdc">
				<a class="li">理科</a> <a class="wen">文科</a>
			</div>
			<div style="height: 100%; width: 100px">
				<div class="selectBath">
					<div>
						<input type="text" value="2015" id="selectBath" disabled="disabled">
						<div>
							<img alt="" src="${path}img/arrow_down.png">
						</div>
					</div>
					<ul>
						<li><a>2014</a></li>
						<li><a>2013</a></li>
						<li><a>2012</a></li>
						<li><a>2011</a></li>
						<li><a>2010</a></li>
					</ul>
				</div>
			</div>
			<input type="text" id="schNameIpt">
			<div class="sub">预测</div>
		</div>
		<div class="pcLeft">
			<div class="cenTitle">高校全集</div>
			<div class="filter">
				<div class="local">
					<div class="localTitle">院校地区:</div>
					<ul>
						<li class="unselected"><a>不限</a></li>
						<c:forEach items="${result.locations}" var="local">
							<li class="unselected"><a>${local.proviName}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="type">
					<div class="localTitle">院校类型:</div>
					<ul>
						<li class="unselected"><a>不限</a></li>
						<c:forEach items="${result.categorys}" var="cate">
							<li class="unselected"><a>${cate.cateName}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="attr">
					<div class="localTitle">院校特色:</div>
					<ul>
						<li class="unselected"><a>不限</a></li>
						<c:forEach items="${result.attributes}" var="attr">
							<li class="unselected"><a>${attr.attrName}</a></li>
						</c:forEach>
					</ul>
				</div>
				<p>
					共找到<span>${result.infoList.total}</span>所院校
				</p>
			</div>
			<div class="schInfo">
				<div>
					<div class="schName">
						<span>${result.Info.scName}</span>
					</div>
					<div class="schPop">
						学校人气：<span>${result.Info.scPop}</span>
					</div>
					<div class="province">
						学校省份：<span>${result.Info.province}</span>
					</div>
				</div>
				<div>
					<div class="F92">
						特色：
						<c:if test="${result.Info.f985==1}">
							<span>985</span>
						</c:if>
						<c:if test="${result.Info.f211==1}">
							<span>211</span>
						</c:if>
					</div>
					<div class="schAttr">
						隶属：<span>${result.Info.ATTR}</span>
					</div>
					<div class="schCate">
						类别：<span>${result.Info.cate}</span>
					</div>
				</div>
				<div class="calScore" style="color: #333"></div>
			</div>
		</div>
	</div>
	<div class="pageBottom"></div>
	<div class="footer"></div>
</body>

</html>