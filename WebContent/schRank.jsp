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
<link rel="stylesheet" href="${path}css/schRank.css" />
<script type="text/javascript">
	$(document).ready(function() {
		var param
		var url = window.location.href
		var paramList = url.split("/")
		pageIndex = paramList.pop();
		param = decodeURI(paramList.pop());
		console.log(pageIndex)
		console.log(param)
		if (param.indexOf("-") < 0) {
			param = "不限-不限-不限"
		}

		var pageUrl = function(urlParam) {
			$(".schIndex>a").each(function() {
				console.log($(this).attr("id"))
				$(this).attr("href", urlParam.concat("/" + $(this).attr("id")))
			})
		}
		pageUrl("${path}schRank/" + param)
		param = param.split("-")
		console.log(param)
		$(".schIndex>a").each(function() {
			if ($(this).text() == pageIndex) {
				$(this).css("backgroundColor", "#19b4f8")
				$(this).css("color", "#fff")
			}
		})
		$(".local ul li").each(function() {
			if ($(this).find("a").text() == decodeURI(param[0])) {
				$(this).removeClass("unselected")
				$(this).addClass("selected")
			}
		})
		$(".type ul li").each(function() {
			if ($(this).find("a").text() == decodeURI(param[1])) {
				$(this).removeClass("unselected")
				$(this).addClass("selected")
			}
		})
		$(".attr ul li").each(function() {
			if ($(this).find("a").text() == decodeURI(param[2])) {
				$(this).removeClass("unselected")
				$(this).addClass("selected")
			}
		})
		$(".local ul li").click(function() {
			param[0] = $(this).find("a").text()
			$(this).find("a").attr("href", "${path}schRank/" + param.join("-").concat("/1"))
			pageUrl("${path}schRank/" + param.join("-"))
		})
		$(".type ul li").click(function() {
			param[1] = $(this).find("a").text()
			$(this).find("a").attr("href", "${path}schRank/" + param.join("-").concat("/1"))
			pageUrl("${path}schRank/" + param.join("-"))
		})
		$(".attr ul li").click(function() {
			param[2] = $(this).find("a").text()
			$(this).find("a").attr("href", "${path}schRank/" + param.join("-").concat("/1"))
			pageUrl("${path}schRank/" + param.join("-"))
		})
	})
</script>
</head>
<body>
	<%@include file="top.jsp"%>
	<div class="position">
		<div>
			<a href="${path}index.jsp">首页 > </a>大学排行榜
		</div>
	</div>
	<div class="pageCenter">
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
			<div class="schContent">
				<div class="contentLeft">
					<c:if test="${result.infoList.total==0}">
						<div class="nullTip">暂无数据</div>
					</c:if>
					<c:forEach items="${result.infoList.list}" var="info" varStatus="varStatus">
						<div class="schPanel">
							<div class="schNum ${varStatus.index>2?'':'top3'}">
								<div>${varStatus.index+1}</div>
							</div>
							<div class="schInfo">
								<div class="schName">
									<div>${info.scName}</div>
									<div>类型:${info.cate}</div>
								</div>
								<div class="schAttr">
									<div>所在地:${info.province}</div>
									<div class="attr">
										特色:
										<c:if test="${info.f985=='1'}">
											<span style="margin-left: 30px;">985</span>
										</c:if>
										<c:if test="${info.f211=='1'}">
											<span style="margin-left: 30px;">211</span>
										</c:if>
										<span style="margin-left: 30px;">${info.ATTR}</span>
									</div>
								</div>
							</div>
							<div class="schRight">
								<div class="schRank" title="学院人气">${info.scPop}</div>
								<div class="schScore">
									<a href="${path}hisScore/${info.scName}/${info.province}/理科/本科一批">历年分数</a>
								</div>
							</div>
						</div>
					</c:forEach>
					<c:if test="${result.infoList.total!=0}">
						<div class="schIndex">
							<c:if test="${result.infoList.pages<5}">
								<c:forEach begin="1" end="${result.infoList.pages}" var="index">
									<a href="" id="${index}">${index}</a>
								</c:forEach>
							</c:if>
							<c:if test="${result.infoList.pageNum<=3&&result.infoList.pages>=5}">
								<a href="" id="1">1</a>
								<a href="" id="2">2</a>
								<a href="" id="3">3</a>
								<a href="" id="4">4</a>
								<a href="" id="5">5</a>
								<span>…</span>
								<a href="" id="${result.infoList.pages}">尾页</a>
							</c:if>
							<c:if test="${result.infoList.pages-3>0&&result.infoList.pageNum>3&&result.infoList.pageNum<result.infoList.pages-3}">
								<a href="" id="1">首页</a>
								<span>…</span>
								<a href="" id="${result.infoList.pageNum-2}">${result.infoList.pageNum-2}</a>
								<a href="" id="${result.infoList.pageNum-1}">${result.infoList.pageNum-1}</a>
								<a href="" id="${result.infoList.pageNum}">${result.infoList.pageNum}</a>
								<a href="" id="${result.infoList.pageNum+1}">${result.infoList.pageNum+1}</a>
								<a href="" id="${result.infoList.pageNum+2}">${result.infoList.pageNum+2}</a>
								<span>…</span>
								<a href="" id="${result.infoList.pages}">尾页</a>
							</c:if>
							<c:if test="${result.infoList.pages-4>0&&result.infoList.pageNum>=result.infoList.pages-3}">
								<a href="" id="1">首页</a>
								<span>…</span>
								<a href="" id="${result.infoList.lastPage-4}">${result.infoList.lastPage-4}</a>
								<a href="" id="${result.infoList.lastPage-3}">${result.infoList.lastPage-3}</a>
								<a href="" id="${result.infoList.lastPage-2}">${result.infoList.lastPage-2}</a>
								<a href="" id="${result.infoList.lastPage-1}">${result.infoList.lastPage-1}</a>
								<a href="" id="${result.infoList.lastPage}">${result.infoList.lastPage}</a>
							</c:if>

						</div>
					</c:if>
				</div>
			</div>
		</div>
		<div class="pcRight">
			<div class="clearfix">
				<p>十大财经类院校</p>
			</div>
			<ul>
				<li><a><i class="top3">1</i>上海财经大学</a></li>
				<li><a><i class="top3">2</i>中南财经政法大学</a></li>
				<li><a><i class="top3">3</i>西南财经大学</a></li>
				<li><a><i>4</i>中央财经大学</a></li>
				<li><a><i>5</i>对外经济贸易大学</a></li>
				<li><a><i>6</i>东北财经大学</a></li>
				<li><a><i>7</i>江西财经大学</a></li>
				<li><a><i>8</i>首都经济贸易大学</a></li>
				<li><a><i>9</i>浙江工商大学</a></li>
				<li><a><i>10</i>天津财经大学</a></li>
			</ul>
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
			<div class="clearfix">
				<p>十大机械类院校</p>
			</div>
			<ul>
				<li><a><i class="top3">1</i>清华大学</a></li>
				<li><a><i class="top3">2</i>浙江大学</a></li>
				<li><a><i class="top3">3</i>上海交通大学</a></li>
				<li><a><i>4</i>西安交通大学</a></li>
				<li><a><i>5</i>华中科技大学</a></li>
				<li><a><i>6</i>哈尔滨工业大学</a></li>
				<li><a><i>7</i>同济大学</a></li>
				<li><a><i>8</i>东南大学</a></li>
				<li><a><i>9</i>吉林大学</a></li>
				<li><a><i>10</i>北京航空航天大学</a></li>
			</ul>
		</div>
	</div>
	<div class="pageBottom"></div>
	<%@include file="footer.jsp"%>
</body>

</html>