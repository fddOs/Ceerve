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
				var paramScore = paramList.pop();
				var paramCdc = paramList.pop();
				var paramStuProvince = paramList.pop();
				var getParamUrl = function(paramStuProvince, paramCdc, paramScore, paramSchProvince, paramBath, paramNum) {
					return "${path}selectSch/" + paramStuProvince + "/" + paramCdc + "/" + paramScore + "/" + paramSchProvince + "/"
							+ paramBath + "/" + paramNum
				}
				console.log(eval("(" + '${result}' + ")"))
				var result = eval("(" + '${result}' + ")").Result
				$(".selectProvin>span").text(paramStuProvince)
				$(".stuScore").val(paramScore)
				$(".local>ul>li").each(function() {
					if ($(this).find("a").text() == paramSchProvince) {
						$(this).removeClass("unselected")
						$(this).addClass("selected")
					}
				})
				$(".type>ul>li").each(function() {
					if ($(this).find("a").text() == paramBath) {
						$(this).removeClass("unselected")
						$(this).addClass("selected")
					}
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
				$(".local>ul>li").click(function() {
					$(".local>ul>li").removeClass("selected");
					$(this).removeClass("unselected");
					$(this).addClass("selected")
					paramSchProvince = $(this).find("a").text()
					$(this).find("a").attr("href", getParamUrl(paramStuProvince, paramCdc, paramScore, paramSchProvince, paramBath, 1))
				})
				$(".type>ul>li").click(function() {
					$(".type>ul>li").removeClass("selected");
					$(this).removeClass("unselected");
					$(this).addClass("selected")
					paramBath = $(this).find("a").text()
					$(this).find("a").attr("href", getParamUrl(paramStuProvince, paramCdc, paramScore, paramSchProvince, paramBath, 1))
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
				var paramUrl = "${path}selectSch/" + paramStuProvince + "/" + paramCdc + "/" + paramScore + "/" + paramSchProvince + "/"
						+ paramBath + "/"
				$(".schIndex>a").each(
						function() {
							console.log($(this).attr("id"))
							$(this).attr("href",
									getParamUrl(paramStuProvince, paramCdc, paramScore, paramSchProvince, paramBath, $(this).attr("id")))
						})
				$(".schIndex>a").each(function() {
					if ($(this).text() == paramNum) {
						$(this).css("backgroundColor", "#19b4f8")
						$(this).css("color", "#fff")
					}
				})
				$(".sub").click(function() {
					if ($(".stuScore").val() != "") {
						paramScore = $(".stuScore").val()
						window.location.href = getParamUrl(paramStuProvince, paramCdc, paramScore, paramSchProvince, paramBath, 1)
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
			<a href="${path}index.jsp">首页 > </a>估分选大学
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
					<div class="proList">
						<ul>
						</ul>
					</div>
				</div>
				<div class="selectCdc">
					<a class="li">理科</a> <a class="wen">文科</a>
				</div>
				<input type="text" placeholder="请填入分数" class="stuScore" style="margin-left: 20px;">
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
						<li class="unselected"><a>不限</a></li>
						<li class="unselected"><a>本科一批</a></li>
						<li class="unselected"><a>本科二批</a></li>
						<li class="unselected"><a>本科三批</a></li>
					</ul>
				</div>
			</div>
			<div class="proInfo">
				<table id="mytable">
					<tbody>
						<tr>
							<td bgcolor="#f4f4f4" rowspan="2"><p>学校名称</p></td>
							<td rowspan="2"><p>学校类别</p></td>
							<td bgcolor="#f4f4f4" rowspan="2"><p>所在省</p></td>
							<td colspan="3"><p>录取分数线</p></td>
						</tr>
						<tr>
							<td><p>最低分</p></td>
							<td><p>最高分</p></td>
							<td><p>平均分</p></td>
						</tr>
						<c:forEach items="${result.Result.list}" var="sch" varStatus="status">
							<tr>
								<td bgcolor="#f4f4f4"><p>${sch.school}</p></td>
								<td><p>${sch.schInfo.cate}</p></td>
								<td bgcolor="#f4f4f4"><p>${sch.schInfo.province}</p></td>
								<td><p>${sch.minScore}</p></td>
								<td bgcolor="#f4f4f4"><p>${sch.higScore}</p></td>
								<td><p>${sch.aveScore}</p></td>
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
		<div class="pcRight" style="margin-top:219px;">
			<div class="clearfix">
				<p>十大计算机类院校</p>
			</div>
			<ul>
				<li><a><i class="top3">1</i>清华大学</a></li>
				<li><a><i class="top3">2</i>国防科学技术大学</a></li>
				<li><a><i class="top3">3</i>北京大学</a></li>
				<li><a><i>4</i>北京航空航天大学</a></li>
				<li><a><i>5</i>哈尔滨工业大学</a></li>
				<li><a><i>6</i>上海交通大学</a></li>
				<li><a><i>7</i>浙江大学</a></li>
				<li><a><i>8</i>南京大学</a></li>
				<li><a><i>9</i>中国科学技术大学</a></li>
				<li><a><i>10</i>东北大学</a></li>
			</ul>
		</div>
	</div>
	<div class="pageBottom"></div>
	<%@include file="footer.jsp"%>
</body>

</html>