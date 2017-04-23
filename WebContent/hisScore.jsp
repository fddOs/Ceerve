<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="${path}css/hisScore.css" />
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var result = eval("(" + '${result}' + ")").Result
						var info = eval("(" + '${result}' + ")").Info
						var param = "${path}hisScore/" + info.scName + "/"
						var url = decodeURI(window.location.href)
						var paramList = url.split("/")
						var paramBath = paramList.pop();
						var paramCdc = paramList.pop();
						var paramPro = paramList.pop();
						console.log(eval("(" + '${result}' + ")"))
						var myChart = echarts.init(document
								.getElementById("scoreGra"));
						var year = new Array();
						var higScore = new Array();
						var minScore = new Array();
						var proScore = new Array();
						var max = 0;
						var min = 750;
						var proMax = 0
						var proMin = 750
						for (var i = 0, j = 0; i < result.length; i++) {
							if (result[i].bath == paramBath) {
								year[j] = result[i].year
								higScore[j] = result[i].higScore
								minScore[j] = result[i].minScore
								proScore[j] = result[i].provinceScore
								console.log(i + "---" + minScore[j])
								j++
							}
						}
						for (var i = 0; i < higScore.length; i++) {
							if (higScore[i] != -1) {
								max = Math.max(max, higScore[i])
							} else {
								higScore[i] = "--"
							}
						}
						for (var i = 0; i < proScore.length; i++) {
							if (proScore[i] != -1) {
								proMax = Math.max(proMax, proScore[i])
								proMin = Math.min(proMin, proScore[i])
							} else {
								proScore[i] = "--"
							}
						}
						for (var i = 0; i < minScore.length; i++) {
							if (minScore[i] != -1) {
								min = Math.min(min, minScore[i])
							} else {
								minScore[i] = "--"
							}
						}
						max = Math.max(proMax, max) + 10
						min = Math.min(proMin, min) - 10
						console.log(max + "--" + min)
						// 指定图表的配置项和数据
						option = {
							title : {
								text : '近十一年录取线'
							},
							tooltip : {
								trigger : 'axis'
							},
							legend : {
								data : [ '最高分', '最低分', '省控线' ]
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
								min : min,
								max : max
							},
							series : [ {
								name : '最高分',
								type : 'line',
								data : higScore,
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
							}, {
								name : '省控线',
								type : 'line',
								data : proScore,
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
							}, {
								name : '最低分',
								type : 'line',
								data : minScore,
								markLine : {
									data : [ {
										type : 'average',
										name : '平均值'
									} ]
								}
							} ]
						};
						// 使用刚指定的配置项和数据显示图表。
						if(result.length == 0){
							$(".scoreGra").html("暂无数据")
							$(".scoreGra").css("height","90px")
						}else{
						myChart.setOption(option);
						}
						$(".selectBath").click(
								function() {
									if ($(this).css("height") == "162px") {
										$(this).css("height", "30px")
									} else {
										$(this).css("height", "162px")
									}
									$(this).css("transition",
											"height 0.5s ease")
									$(".selectBath>ul>li").css("border-bottom",
											"1px solid #ee5909")
									$(".selectBath>ul>li").last().css(
											"border-bottom", "none")
									$(".selectBath>ul>li").first().css(
											"border-top", "1px solid #ee5909")
								})

						$(".selectBath>div>input").val(paramBath)
						$(".selectProvin>span").text(paramPro)
						$(".selectBath>ul>li").click(
								function() {
									console.log($(this))
									$(this).find("a").attr(
											"href",
											param + paramPro + "/" + paramCdc
													+ "/" + $(this).text())
								})
						if (paramCdc == "文科") {
							$(".wen").css("backgroundColor", "#ee5909")
							$(".wen").css("color", "#fff")
						} else {
							$(".li").css("backgroundColor", "#ee5909")
							$(".li").css("color", "#fff")
						}
						$(".wen").click(
								function() {
									$(this).attr(
											"href",
											param + paramPro + "/文科/"
													+ paramBath)
								})
						$(".li").click(
								function() {
									$(this).attr(
											"href",
											param + paramPro + "/理科/"
													+ paramBath)
								})
						$(".selectPro")
								.click(
										function() {
											if ($(".proList>ul").children().length == 0) {
												$
														.ajax({
															url : "${path}/getLocations",
															data : "",
															dataType : "json",
															success : function(
																	data) {
																data = eval("("
																		+ data
																		+ ")")
																for (var i = 0; i < data.Locations.length; i++) {
																	$(
																			".proList>ul")
																			.append(
																					"<li class='unselected'><a>"
																							+ data.Locations[i].proviName
																							+ "</a></li>")
																	if (data.Locations[i].proviName == "黑龙江") {
																		$(
																				".proList>ul>li:eq("
																						+ i
																						+ ")")
																				.css(
																						"margin-left",
																						"5px")
																	} else if (data.Locations[i].proviName == "内蒙古") {
																		$(
																				".proList>ul>li:eq("
																						+ i
																						+ ")")
																				.css(
																						"margin-left",
																						"-1px")
																	}
																	$(
																			".proList>ul li")
																			.click(
																					function() {
																						$(
																								this)
																								.find(
																										"a")
																								.attr(
																										"href",
																										param
																												+ $(
																														this)
																														.text()
																												+ "/"
																												+ paramCdc
																												+ "/"
																												+ paramBath)
																					})
																}
																if ($(
																		".selectPro>img")
																		.css(
																				"display") == "none") {
																	$(
																			".selectPro>img")
																			.css(
																					"display",
																					"inline-block")
																	$(
																			".proList")
																			.css(
																					"display",
																					"block")
																} else {
																	$(
																			".selectPro>img")
																			.css(
																					"display",
																					"none")
																	$(
																			".proList")
																			.css(
																					"display",
																					"none")
																}
															}
														})
											} else {
												if ($(".selectPro>img").css(
														"display") == "none") {
													$(".selectPro>img").css(
															"display",
															"inline-block")
													$(".proList").css(
															"display", "block")
												} else {
													$(".selectPro>img").css(
															"display", "none")
													$(".proList").css(
															"display", "none")
												}
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
			<a href="${path}index.jsp">首页 > </a><a href="${path}schRank/不限-不限-不限/1">大学排行榜 > </a>学校历年分数
		</div>
	</div>
	<div class="pageCenter">
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
		</div>
		<div class="scoreTable">
			<div class="stTitle">
				<div class="scoreTitle">${result.Info.scName}--历年录取分数线</div>
				<div class="selectPro">
					<div class="selectProvin">
						<span>省份</span><img alt="" src="${path}img/arrow_down.png">
					</div>
					<img alt="" src="${path}img/arrow_up.png">
					<div class="proList">
						<ul>
							<%-- <c:forEach items="${result.locations}" var="local">
								<li class="unselected"><a>${local.proviName}</a></li>
							</c:forEach> --%>
						</ul>
					</div>
				</div>
				<div class="selectCdc">
					<a class="li">理科</a> <a class="wen">文科</a>
				</div>
				<div style="height: 100%; width: 100px">
					<div class="selectBath">
						<div>
							<input type="text" value="本科一批" id="selectBath"
								disabled="disabled">
							<div>
								<img alt="" src="${path}img/arrow_down.png">
							</div>
						</div>
						<ul>
							<li><a>提前</a></li>
							<li><a>本科一批</a></li>
							<li><a>本科二批</a></li>
							<li><a>本科三批</a></li>
						</ul>
					</div>
				</div>

			</div>
			<c:if test="${fn:length(result.Result)!=0}">
				<table id="mytable">
					<tbody>
						<tr bgcolor="#f4f4f4">
							<td><p>年份</p></td>
							<td><p>最高分</p></td>
							<td><p>最低分</p></td>
							<td><p>平均分</p></td>
							<td><p>录取人数</p></td>
							<td><p>录取批次</p></td>
						</tr>
						<c:forEach items="${result.Result}" var="res" varStatus="status">
							<tr>
								<td><p>${res.year}</p></td>
								<c:if test="${res.higScore==-1}">
									<td><p>--</p></td>
								</c:if>
								<c:if test="${res.higScore!=-1}">
									<td><p>${res.higScore}</p></td>
								</c:if>
								<c:if test="${res.minScore==-1}">
									<td><p>--</p></td>
								</c:if>
								<c:if test="${res.minScore!=-1}">
									<td><p>${res.minScore}</p></td>
								</c:if>
								<c:if test="${res.aveScore==-1}">
									<td><p>--</p></td>
								</c:if>
								<c:if test="${res.aveScore!=-1}">
									<td><p>${res.aveScore}</p></td>
								</c:if>
								<c:if test="${res.admiSnum==-1}">
									<td><p>--</p></td>
								</c:if>
								<c:if test="${res.admiSnum!=-1}">
									<td><p>${res.admiSnum}</p></td>
								</c:if>
								<td><p>${res.bath}</p></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
		</div>
		<div id="scoreGra" class="scoreGra"></div>
	</div>
	<div class="pageBottom"></div>
	<div class="footer"></div>
</body>

</html>