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
<link rel="stylesheet" href="${path}css/schRank.css" />
<link rel="stylesheet" href="${path}css/scoSecPro.css" />
<script type="text/javascript">
	$(document).ready(
			function() {
				var url = decodeURI(window.location.href)
				var paramList = url.split("/")
				var paramNum = paramList.pop();
				var paramBath = paramList.pop();
				var paramSchProvince = paramList.pop();
				var paramProfession = paramList.pop();
				var paramScore = paramList.pop();
				var paramCdc = paramList.pop();
				var paramYear = paramList.pop();
				var paramStuProvince = paramList.pop();
				var getParamUrl = function(paramStuProvince, paramYear, paramCdc, paramScore, paramProfession, paramSchProvince, paramBath,
						paramNum) {
					if (paramProfession == "" || paramProfession == null || paramProfession == "undefined") {
						paramProfession = "不限";
					}
					return "${path}scoSecPro/" + paramStuProvince + "/" + paramYear + "/" + paramCdc + "/" + paramScore + "/"
							+ paramProfession + "/" + paramSchProvince + "/" + paramBath + "/" + paramNum
				}
				console.log(eval("(" + '${result}' + ")"))
				var result = eval("(" + '${result}' + ")").Result
				$(".selectBath>div>input").val(paramYear)
				$(".selectProvin>span").text(paramStuProvince)
				//$("#schNameIpt").val(paramSch)
				$(".stuScore").val(paramScore)
				if (paramProfession != "不限") {
					$("#schNameIpt").val(paramProfession)
				}
				$(".local>ul>li").each(function() {
					if ($(this).find("a").text() == paramSchProvince) {
						$(this).removeClass("unselected")
						$(this).addClass("selected")
					}
				})
				$(".type>ul>li").each(function() {
					if ($(this).find("a>span").text().indexOf(paramBath) != -1) {
						$(this).removeClass("unselected")
						$(this).addClass("selected")
					}
				})
				$(".selectBath>ul>li").click(function() {
					paramYear = $(this).find("a").text()
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
					paramYear = $(this).find("a").text()
					$(".selectBath>div>input").val(paramYear)
				})
				$(".local>ul>li").click(
						function() {
							$(".local>ul>li").removeClass("selected");
							$(this).removeClass("unselected");
							$(this).addClass("selected")
							paramSchProvince = $(this).find("a").text()
							$(this).find("a").attr(
									"href",
									getParamUrl(paramStuProvince, paramYear, paramCdc, paramScore, paramProfession, paramSchProvince,
											paramBath, 1))
						})
				$(".type>ul>li").click(
						function() {
							$(".type>ul>li").removeClass("selected");
							$(this).removeClass("unselected");
							$(this).addClass("selected")
							paramBath = $(this).find("a>span").text()
							$(this).find("a").attr(
									"href",
									getParamUrl(paramStuProvince, paramYear, paramCdc, paramScore, paramProfession, paramSchProvince,
											paramBath, 1))
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
				$(".selectPro").click(function() {
					if ($(".proList>ul").children().length == 0) {
						$.ajax({
							url : "${path}/getLocations",
							data : "",
							dataType : "json",
							success : function(data) {
								data = eval("(" + data + ")")
								for (var i = 0; i < data.Locations.length; i++) {
									$(".proList>ul").append("<li class='unselected'>" + data.Locations[i].proviName + "</li>")
									if (data.Locations[i].proviName == "黑龙江") {
										$(".proList>ul>li:eq(" + i + ")").css("margin-left", "5px")
									}
									else if (data.Locations[i].proviName == "内蒙古") {
										$(".proList>ul>li:eq(" + i + ")").css("margin-left", "-1px")
									}
									$(".proList>ul li").click(function() {
										paramStuProvince = $(this).text()
										$(".selectProvin>span").text(paramStuProvince)
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
				var paramUrl = "${path}scoSecPro/" + paramStuProvince + "/" + paramYear + "/" + paramCdc + "/" + paramScore + "/"
						+ paramProfession + "/" + paramSchProvince + "/" + paramBath + "/"
				$(".schIndex>a").each(
						function() {
							console.log($(this).attr("id"))
							$(this).attr(
									"href",
									getParamUrl(paramStuProvince, paramYear, paramCdc, paramScore, paramProfession, paramSchProvince,
											paramBath, $(this).attr("id")))
						})
				$(".schIndex>a").each(function() {
					if ($(this).text() == paramNum) {
						$(this).css("backgroundColor", "#19b4f8")
						$(this).css("color", "#fff")
					}
				})
				$(".sub").click(
						function() {
							if ($(".stuScore").val() != "") {
								paramProfession = $("#schNameIpt").val()
								if ($("#schNameIpt").val == "") {
									paramProfession = "不限"
								}
								paramScore = $(".stuScore").val()
								window.location.href = getParamUrl(paramStuProvince, paramYear, paramCdc, paramScore, paramProfession,
										paramSchProvince, paramBath, 1)
							}
							else {
								alert("请输入分数！")
							}
						})
			})
</script>
</head>
<body>
	<%@include file="top.jsp"%>
	<div class="position">
		<div>
			<a href="${path}index.jsp">首页 > </a>知分选专业
		</div>
	</div>
	<div class="pageCenter">
		<div class="pcLeft">
			<div class="stTitle">
				<div class="selectPro">
					<div class="selectProvin">
						<span>省份</span><img alt="" src="${path}img/arrow_down.png">
					</div>
					<img alt="" src="${path}img/arrow_up.png">
					<div class="proList" style="left: -1px">
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
							<li><a>2015</a></li>
							<li><a>2014</a></li>
							<li><a>2013</a></li>
							<li><a>2012</a></li>
							<li><a>2011</a></li>
							<li><a>2010</a></li>
						</ul>
					</div>
				</div>
				<input type="text" placeholder="可以指定专业" id="schNameIpt"> <input type="text" placeholder="请填入分数" class="stuScore"
					style="margin-left: 20px;">
				<div class="sub">预测</div>
			</div>
			<div class="filter">
				<div class="local" style="min-height: 80px;">
					<div class="localTitle">院校地区:</div>
					<ul>
						<li class="unselected"><a>不限</a></li>
						<c:forEach items="${result.locations}" var="local">
							<li class="unselected"><a>${local.proviName}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="type">
					<div class="localTitle">录取批次:</div>
					<ul>
						<li class="unselected"><a><span>不限</span></a></li>
						<li class="unselected"><a>第<span>一批</span>次
						</a></li>
						<li class="unselected"><a>第<span>二批</span>次
						</a></li>
						<li class="unselected"><a>第<span>三批</span>次
						</a></li>
					</ul>
				</div>
			</div>
			<div class="proInfo">
				<table id="mytable">
					<tbody>
						<tr>
							<td bgcolor="#f4f4f4" rowspan="2"><p>专业名称</p></td>
							<td rowspan="2"><p>学校名称</p></td>
							<td bgcolor="#f4f4f4" rowspan="2"><p>所在省</p></td>
							<td colspan="3"><p>录取分数线</p></td>
						</tr>
						<tr>
							<td><p>年份</p></td>
							<td><p>最高分</p></td>
							<td><p>平均分</p></td>
						</tr>
						<c:forEach items="${result.Result.list}" var="pro" varStatus="status">
							<tr>
								<td bgcolor="#f4f4f4"><p>${pro.proName}</p></td>
								<td><p>${pro.school}</p></td>
								<td bgcolor="#f4f4f4"><p>${pro.schInfo.province}</p></td>
								<td><p>${pro.year}</p></td>
								<td bgcolor="#f4f4f4"><p>${pro.maxScore}</p></td>
								<td><p>${pro.avgScore}</p></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:if test="${result.Result.total!=0}">
					<div class="schIndex">
						<c:if test="${result.Result.pages<5}">
							<c:forEach begin="1" end="${result.Result.pages}" var="index">
								<a href="" id="${index}">${index}</a>
							</c:forEach>
						</c:if>
						<c:if test="${result.Result.pageNum<=3&&result.Result.pages>=5}">
							<a href="" id="1">1</a>
							<a href="" id="2">2</a>
							<a href="" id="3">3</a>
							<a href="" id="4">4</a>
							<a href="" id="5">5</a>
							<span>…</span>
							<a href="" id="${result.Result.pages}">尾页</a>
						</c:if>
						<c:if test="${result.Result.pages-3>0&&result.Result.pageNum>3&&result.Result.pageNum<result.Result.pages-3}">
							<a href="" id="1">首页</a>
							<span>…</span>
							<a href="" id="${result.Result.pageNum-2}">${result.Result.pageNum-2}</a>
							<a href="" id="${result.Result.pageNum-1}">${result.Result.pageNum-1}</a>
							<a href="" id="${result.Result.pageNum}">${result.Result.pageNum}</a>
							<a href="" id="${result.Result.pageNum+1}">${result.Result.pageNum+1}</a>
							<a href="" id="${result.Result.pageNum+2}">${result.Result.pageNum+2}</a>
							<span>…</span>
							<a href="" id="${result.Result.pages}">尾页</a>
						</c:if>
						<c:if test="${result.Result.pages-4>0&&result.Result.pageNum>=result.Result.pages-3}">
							<a href="" id="1">首页</a>
							<span>…</span>
							<a href="" id="${result.Result.lastPage-4}">${result.Result.lastPage-4}</a>
							<a href="" id="${result.Result.lastPage-3}">${result.Result.lastPage-3}</a>
							<a href="" id="${result.Result.lastPage-2}">${result.Result.lastPage-2}</a>
							<a href="" id="${result.Result.lastPage-1}">${result.Result.lastPage-1}</a>
							<a href="" id="${result.Result.lastPage}">${result.Result.lastPage}</a>
						</c:if>
					</div>
				</c:if>
			</div>
		</div>
		<div class="pcRight" style="margin-top: 219px;">
			<div class="clearfix">
				<p>专业就业率排行</p>
			</div>
			<ul>
				<li><a><i class="top3">1</i>石油工程</a></li>
				<li><a><i class="top3">2</i>工程造价</a></li>
				<li><a><i class="top3">3</i>金属材料工程</a></li>
				<li><a><i>4</i>航海技术</a></li>
				<li><a><i>5</i>过程装备与控制工程</a></li>
				<li><a><i>6</i>油气储运工程</a></li>
				<li><a><i>7</i>给排水科学与工程</a></li>
				<li><a><i>8</i>农业机械化及其自动化</a></li>
				<li><a><i>9</i>轮机工程</a></li>
				<li><a><i>10</i>建筑环境与能源应用工程</a></li>
			</ul>
		</div>
	</div>
	<div class="pageBottom"></div>
	<%@include file="footer.jsp"%>
</body>

</html>