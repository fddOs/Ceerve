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
<link rel="stylesheet" href="${path}css/proRank.css" />
<script type="text/javascript">
	$(document).ready(function() {
		console.log("${result.list}")
		console.log($("#mytable>tr"))
		$("#mytable>tbody>tr").each(function(i){
			if((i+1)%2!=0){
				$(this).css("backgroundColor","#f4f4f4")
			}
		})
	})
</script>
</head>
<body>
	<%@include file="top.jsp" %>
	<div class="position">
		<div>
			<a href="${path}index.jsp">首页 > </a>专业排行榜
		</div>
	</div>
	<div class="pageCenter">
		<table id="mytable">
			<tbody>
				<tr>
					<td bgcolor="#f4f4f4"><p>排名</p></td>
					<td><p>专业名称</p></td>
					<td bgcolor="#f4f4f4"><p>专业层次</p></td>
					<td><p>专业热度</p></td>
					<td bgcolor="#f4f4f4"><p>排名</p></td>
					<td><p>专业名称</p></td>
					<td bgcolor="#f4f4f4"><p>专业层次</p></td>
					<td><p>专业热度</p></td>
				</tr>
				<c:forEach items="${result.list}" var="pro" varStatus="status" step="2">
					<tr>
						<td bgcolor="#f4f4f4"><p>${result.list[status.index].proNo}</p></td>
						<td><p><a class="proLink" href="${path}proDetail/${result.list[status.index].proNo}">${result.list[status.index].proName}</a></p></td>
						<td bgcolor="#f4f4f4"><p>本科</p></td>
						<td><p>${result.list[status.index+1].proPop}</p></td>
						<td bgcolor="#f4f4f4"><p>${result.list[status.index+1].proNo}</p></td>
						<td><p><a class="proLink" href="${path}proDetail/${result.list[status.index+1].proNo}">${result.list[status.index+1].proName}</a></p></td>
						<td bgcolor="#f4f4f4"><p>本科</p></td>
						<td><p>${result.list[status.index+1].proPop}</p></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="pageBottom"></div>
	<%@include file="footer.jsp" %>
</body>

</html>