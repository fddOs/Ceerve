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
<!-- http://www.xycareer.com/hollanderQuestion/ -->
<!-- https://wenku.baidu.com/view/4274aaa8dd3383c4bb4cd218.html -->
<title>高考志愿填报参考系统</title>
<meta charset="UTF-8" />
<script type="text/javascript" src="${path}js/jquery-1.7.1.min.js"></script>
<script src="${path}js/index.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="${path}css/all.css" />
<link rel="stylesheet" href="${path}css/mbtiTest.css" />
<script type="text/javascript">
	$(document).ready(function() {
		var index = 0
		$(".proBottom>div").css("width", 100 / 28 + "%")
		$(".nextPro").click(function() {
			if (index == 27) {
				var param = ""
				$(".answer div input:checked").each(function() {
					param = param + $(this).val() + ","
				})
				$("input:[name='param']").val(param)
				console.log($("input:[name='param']").val())
				$(".testForm").submit();
			}
			else {
				if (index == 26) {
					$(".nextPro").html("提交")
				}
				if ($(".answer:eq(" + index + ") div input:checked").length == 0) {
					alert("请选择答案！")
				}
				else {
					if (index < 27) {
						index++
					}
					console.log(index);
					scroll(index)
				}
			}
			$(".proIndex").html(index + 1)
			$(".proBottom>div").css("width", (index + 1) * 100 / 28 + "%")
			$(".proBottom>div").css("transition", "width 0.8s ease-in-out")
		})
		$(".answer div").click(function() {
			console.log($(this).find("input").val())
			$(this).find("input").attr("checked", "checked")
			$(this).siblings().css("border", "1px solid #b4b4b4");
			$(this).css("border", "1px solid #ee5909");
		})
		function scroll(index) {
			$(".testScroll").animate({
				"margin-left" : -800 * index + "px"
			}, 700)
		}
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
			<a href="${path}index.jsp">首页 > </a><a href="${path}OccuTest.jsp">专业测评 > </a>MBTI职业性格测试
		</div>
	</div>
	<div class="photos">
		<img src="${path}img/in1.png" />
	</div>
	<div class="pageCenter">
		<div class="testTitle">MBTI职业性格测试</div>

		<div class="testContent">
			<div class="testScroll">
				<div class="testPanel">
					<div class="problem">1.你倾向从何处得到力量：</div>
					<div class="answer">
						<div>
							<input type="radio" name="one" value="E" /><span>（E）别人。</span>
						</div>
						<div>
							<input type="radio" name="one" value="I" /><span>（I）自己的想法。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">2.当你参加一个社交聚会时，你会：</div>
					<div class="answer">
						<div>
							<input type="radio" name="two" value="E" /><span>（E）在夜色很深时，一旦你开始投入，也许就是最晚离开的那一个。</span>
						</div>
						<div>
							<input type="radio" name="two" value="I" /><span>（I）在夜晚刚开始的时候，我就疲倦了并且想回家。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">3.下列哪一件事听起来比较吸引你？</div>
					<div class="answer">
						<div>
							<input type="radio" name="three" value="E" /><span>（E）与情人到有很多人且社交活动频繁的地方。</span>
						</div>
						<div>
							<input type="radio" name="three" value="I" /><span>（I）待在家中与情人做一些特别的事情，例如说观赏一部有趣的录影带并享用你最喜欢的外卖食物。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">4.在约会中，你通常：</div>
					<div class="answer">
						<div>
							<input type="radio" name="four" value="E" /><span>（E）整体来说很健谈。</span>
						</div>
						<div>
							<input type="radio" name="four" value="I" /><span>（I）较安静并保留，直到你觉得舒服。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">5.过去，你遇见你大部分的情人是：</div>
					<div class="answer">
						<div>
							<input type="radio" name="five" value="E" /><span>（E）在宴会中、夜总会、工作上、休闲活动中、会议上或当朋友介绍我给他们的朋友时。</span>
						</div>
						<div>
							<input type="radio" name="five" value="I" /><span>（I）通过私人的方式，例如个人广告、录影约会，或是由亲密的朋友和家人介绍。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">6.你倾向拥有：</div>
					<div class="answer">
						<div>
							<input type="radio" name="six" value="E" /><span>（E）很多认识的人和很亲密的朋友。</span>
						</div>
						<div>
							<input type="radio" name="six" value="I" /><span>（I）一些很亲密的朋友和一些认识的人。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">7.过去，你的爱人和情人倾向对你说：</div>
					<div class="answer">
						<div>
							<input type="radio" name="seven" value="E" /><span>（E）你难道不可以安静一会儿吗？</span>
						</div>
						<div>
							<input type="radio" name="seven" value="I" /><span>（I）可以请你从你的世界中出来一下吗？</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">8.你倾向通过以下哪种方式收集信息：</div>
					<div class="answer">
						<div>
							<input type="radio" name="eight" value="N" /><span>（N）你对有可能发生之事的想像和期望。</span>
						</div>
						<div>
							<input type="radio" name="eight" value="S" /><span>（S）你对目前状况的实际认知。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">9.你倾向相信：</div>
					<div class="answer">
						<div>
							<input type="radio" name="nine" value="N" /><span>（N）你的直觉。</span>
						</div>
						<div>
							<input type="radio" name="nine" value="S" /><span>（S）你直接的观察和现成的经验。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">10.当你置身于一段关系中时，你倾向相信：</div>
					<div class="answer">
						<div>
							<input type="radio" name="ten" value="N" /><span>（N）永远有进步的空间。</span>
						</div>
						<div>
							<input type="radio" name="ten" value="S" /><span>（S）若它没有被破坏，不予修补。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">11.当你对一个约会觉得放心时，你偏向谈论：</div>
					<div class="answer">
						<div>
							<input type="radio" name="eleven" value="N" /><span>（N）未来，关于改进或发明事物和生活的种种可能性。例如，你也许会谈论一个新的科学发明，或一个更好的方法来表达你的感受。</span>
						</div>
						<div>
							<input type="radio" name="eleven" value="S" /><span>（S）实际的、具体的、关于“此时此地”的事物。例如，你也许会谈论品酒的好方法，或你即将要参加的新奇旅程。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">12.你是这种人:</div>
					<div class="answer">
						<div>
							<input type="radio" name="twelve" value="N" /><span>（N）喜欢先纵观全局。</span>
						</div>
						<div>
							<input type="radio" name="twelve" value="S" /><span>（S）喜欢先掌握细节。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">13.你是这类型的人：</div>
					<div class="answer">
						<div>
							<input type="radio" name="thirteen" value="N" /><span>（N）与其活在现实中，不如活在想像里。</span>
						</div>
						<div>
							<input type="radio" name="thirteen" value="S" /><span>（S）与其活在想像里，不如活在现实中。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">14.你通常：</div>
					<div class="answer">
						<div>
							<input type="radio" name="fourteen" value="N" /><span>（N）偏向于去想像一大堆关于即将来临的约会的事情。</span>
						</div>
						<div>
							<input type="radio" name="fourteen" value="S" /><span>（S）偏向于拘谨地想像即将来临的约会，只期待让它自然地发生。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">15.你倾向如此做决定：</div>
					<div class="answer">
						<div>
							<input type="radio" name="fifteen" value="F" /><span>（F）首先依你的心意，然后依你的逻辑。</span>
						</div>
						<div>
							<input type="radio" name="fifteen" value="T" /><span>（T）首先依你的逻辑，然后依你的心意。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">16.你倾向比较能够察觉到：</div>
					<div class="answer">
						<div>
							<input type="radio" name="sixteen" value="F" /><span>（F）当人们需要情感上的支持时。</span>
						</div>
						<div>
							<input type="radio" name="sixteen" value="T" /><span>（T）当人们不合逻辑时。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">17.当和某人分手时：</div>
					<div class="answer">
						<div>
							<input type="radio" name="seventeen" value="F" /><span>（F）你通常让自己的情绪深陷其中，很难抽身出来。</span>
						</div>
						<div>
							<input type="radio" name="seventeen" value="T" /><span>（T）虽然你觉得受伤，但一旦下定决心，你会直截了当地将过去恋人的影子甩开。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">18.当与一个人交往时，你倾向于看重：</div>
					<div class="answer">
						<div>
							<input type="radio" name="eighteen" value="F" /><span>（F）情感上的相容性：表达爱意和对另一半的需求很敏感。</span>
						</div>
						<div>
							<input type="radio" name="eighteen" value="T" /><span>（T）智慧上的相容性：沟通重要的想法；客观地讨论和辩论事情。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">19.当你不同意情人的想法时：</div>
					<div class="answer">
						<div>
							<input type="radio" name="nineteen" value="F" /><span>（F）你尽可能地避免伤害对方的感情；若是会对对方造成伤害的话，你就不会说。</span>
						</div>
						<div>
							<input type="radio" name="nineteen" value="T" /><span>（T）你通常毫无保留地说话，并且对情人直言不讳，因为对的就是对的。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">20.认识你的人倾向形容你为：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twenty" value="F" /><span>（F）热情和敏感。</span>
						</div>
						<div>
							<input type="radio" name="twenty" value="T" /><span>（T）逻辑和明确。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">21.你把大部分和别人的相遇视为：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyOne" value="F" /><span>（F）友善及重要的。</span>
						</div>
						<div>
							<input type="radio" name="twentyOne" value="T" /><span>（T）另有目的。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">22.若你有时间和金钱，你的朋友邀请你到国外度假，并且在前一天才通知，你会：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyTwo" value="J" /><span>（J）必须先检查你的时间表。</span>
						</div>
						<div>
							<input type="radio" name="twentyTwo" value="P" /><span>（P）立刻收拾行装。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">23.在第一次约会中：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyThree" value="J" /><span>（J）若你所约的人来迟了，你会很不高兴。</span>
						</div>
						<div>
							<input type="radio" name="twentyThree" value="P" /><span>（P）一点儿都不在乎，因为你自己常常迟到。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">24.你偏好：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyFour" value="J" /><span>（J）事先知道约会的行程：要去哪里、有谁参加、你会在那里多久、该如何打扮。</span>
						</div>
						<div>
							<input type="radio" name="twentyFour" value="P" /><span>（P）让约会自然地发生，不做太多事先的计划。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">25.你选择的生活充满着：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyFive" value="J" /><span>（J）日程表和组织。</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="P" /><span>（P）自然发生和弹性。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">26.哪一项较常见：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentySix" value="J" /><span>（J）你准时出席而其他人都迟到。</span>
						</div>
						<div>
							<input type="radio" name="twentySix" value="P" /><span>（P）其他人都准时出席而你迟到。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">27.你是这种喜欢……的人：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentySeven" value="J" /><span>（J）下定决心并且做出最后肯定的结论。</span>
						</div>
						<div>
							<input type="radio" name="twentySeven" value="P" /><span>（P）放宽你的选择面并且持续收集信息。</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">28.你是此类型的人：</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyEight" value="J" /><span>（J）喜欢在一段时间里专心于一件事情直到完成。</span>
						</div>
						<div>
							<input type="radio" name="twentyEight" value="P" /><span>（P）享受同时进行好几件事情。</span>
						</div>
					</div>
				</div>
			</div>
			<div class="npButtom">
				<form class="testForm" action="${path}mbtiResult" method="post">
					<input type="hidden" name="param" value="" />
					<div class="nextPro">下一题</div>
				</form>
			</div>
		</div>

	</div>
	<div class="pageBottom">
		<div>
			<div class="proTop">
				<div>MBTI职业性格测试完整版</div>
				<div>
					测试进度：第<span class="proIndex">1</span>/28题
				</div>
			</div>
			<div class="proBottom">
				<div></div>
			</div>
		</div>
	</div>
	<div class="footer"></div>
</body>
</html>