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
<link rel="stylesheet" href="${path}css/mbtiTest.css" />
<script type="text/javascript">
	$(document).ready(function() {
		var index = 0
		var param = ""
		$(".proBottom>div").css("width", 100 / 30 + "%")
		$(".nextPro").click(function() {
			if ($(".answer:eq(" + index + ") div input:checked").length == 0) {
				alert("请选择答案！")
			}
			else {
				if (index == 29) {
					param = param + "-" +$(".answer:eq(" + index + ") div input:checked").val()
					$("input:[name='param']").val(param)
					alert($("input:[name='param']").val())
					//$(".testForm").submit();
					window.location.href = "${path}HlandeResult.jsp?param=" + param.substring(1, param.length);
				}
				else {
					if (index == 28) {
						$(".nextPro").html("提交")
					}

					if (index < 18) {
						param = param + "-" +$(".answer:eq(" + index + ") div input:checked").length
					}
					else {
						param = param + "-" +$(".answer:eq(" + index + ") div input:checked").val()
					}
					if (index < 29) {
						index++
					}
					console.log(index);
					scroll(index)
				}
			}

			$(".proIndex").html(index + 1)
			$(".proBottom>div").css("width", (index + 1) * 100 / 30 + "%")
			$(".proBottom>div").css("transition", "width 0.8s ease-in-out")
		})
		$(".answer div").click(function() {
			$(this).find("input").attr("checked", "checked")
			if ($(this).find("input").attr("type") == "radio") {
				$(this).siblings().css("border", "1px solid #b4b4b4");
			}
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
			<a href="${path}index.jsp">首页 > </a><a href="${path}OccuTest.jsp">专业测评 > </a>霍兰德职业兴趣测试
		</div>
	</div>
	<div class="photos">
		<img src="${path}img/in1.png" />
	</div>
	<div class="pageCenter">
		<div class="testTitle">霍兰德职业兴趣测试</div>
		<div class="testContent">
			<div class="testScroll">
				<div class="testPanel">
					<div class="problem">第1题：您所感兴趣的活动 R：实际型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="one" value="1" /><span>装配修理电器或玩具</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>修理自行车。</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>用木头做东西</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>开汽车或摩托车</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>用机器做东西</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>参加木工技术学习班</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>参加制图描图学习班</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>驾驶卡车或拖拉机</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>参加机械和电气学习班</span>
						</div>
						<div>
							<input type="checkbox" name="one" value="1" /><span>装配修理机器</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第2题：您所感兴趣的活动 S：社会型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="two" value="1" /><span>或单位组织的正式活动</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>参加某个社会团体或俱乐部活动</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>帮助别人解决困难</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>照顾儿童</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>出席晚会、联欢会、茶话会</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>和大家一起出去郊游</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>想获得关于心理方面的知识</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>参加讲座会或辩论会</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>观看或参加体育比赛和运动会</span>
						</div>
						<div>
							<input type="checkbox" name="two" value="1" /><span>结交新朋友</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第3题：您所感兴趣的活动 I：研究型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="three" value="1" /><span>阅读科技图书或杂志</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>在实验室工作</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>改良水果品种，培育新的水果</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>调查了解土和金属等物质的成份</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>研究自己选择的特殊问题</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>解算术或数学游戏</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>物理课</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>化学课</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>几何课</span>
						</div>
						<div>
							<input type="checkbox" name="three" value="1" /><span>生物课</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第4题：您所感兴趣的活动 E：事业型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="four" value="1" /><span>鼓动他人</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>卖东西</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>谈论政治</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>制定计划、参加会议</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>以自己的意志影响别人的行为</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>在社会团体中担任职务</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>检查与评价别人的工作</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>结交名流</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>指导有某种目标的团体</span>
						</div>
						<div>
							<input type="checkbox" name="four" value="1" /><span>参与政治活动</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第5题：您所感兴趣的活动 A：艺术型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="five" value="1" /><span>素描/制图或绘画</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>参加话剧/戏剧</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>设计家具/布置室内</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>练习乐器/参加乐队</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>欣赏音乐或戏剧</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>看小说/读剧本</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>从事摄影创作</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>写诗或吟诗</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>进艺术（美术/音乐）培训班练习书法</span>
						</div>
						<div>
							<input type="checkbox" name="five" value="1" /><span>练习书法</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第6题：您所感兴趣的活动 C：常规型(传统型)活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="six" value="1" /><span>整理好桌面与房间</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>抄写文件和信件</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>为领导写报告或公务信函</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>检查个人收支情况</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>打字培训班</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>参加算盘、文秘等实务培训</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>参加商业会计培训班</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>参加情报处理培训班</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>整理信件、报告、记录等</span>
						</div>
						<div>
							<input type="checkbox" name="six" value="1" /><span>写商业贸易信</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第7题：您所擅长获胜的活动 R：实际型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能使用电锯、电钻和锉刀等木工工具</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>知道万用电表的使用方法</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能够修理自行车或其它机械</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能够使用电钻订、磨床或缝纫机</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能给家具和木制品刷漆</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能看建筑设计图</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能够修理简单的电气用品</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能修理家具</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能修理收录机</span>
						</div>
						<div>
							<input type="checkbox" name="seven" value="1" /><span>能简单地修理水管</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第8题：您所擅长获胜的活动 S：社会型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="eight" value="1" /><span>有向各种人说明解释的能力</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>常参加社会福利活动</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>能和大家一起友好相处地工作</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>善于与年长者相处</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>会邀请人、招待人</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>能简单易懂地教育儿童</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>能安排会议等活动顺序</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>善于体察人心和帮助他人</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>帮助护理病人和伤员</span>
						</div>
						<div>
							<input type="checkbox" name="eight" value="1" /><span>安排社团组织的各种事务</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第9题：您所擅长获胜的活动 I：研究型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="nine" value="1" /><span>懂得真空管或晶体管的作用</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>能够列举三种蛋白质多的食品</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>理解铀的裂变</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>能用计算尺、计算器、对数表</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>会使用显微镜</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>能找到三个星座</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>能独立进行调查研究</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>能解释简单的化学</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>能理解人造卫星为什么不落地</span>
						</div>
						<div>
							<input type="checkbox" name="nine" value="1" /><span>经常参加学术的会议</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第10题：您所擅长获胜的活动 E：事业型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="ten" value="1" /><span>担任过学生干部并且干得不错</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>工作上能指导和监督他人</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>做事充满活力和热情</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>有效利用自身的做法调动他人</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>销售能力强</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>曾作为俱乐部或社团的负责人</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>向领导提出建议或反映意见</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>有开创事业的能力</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>知道怎样做能成为一个优秀的领导者</span>
						</div>
						<div>
							<input type="checkbox" name="ten" value="1" /><span>健谈善辩</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第11题：您所擅长获胜的活动 A：艺术型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>能演奏乐器</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>能参加二部或四部合唱</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>独唱或独奏</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>扮演剧中角色</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>能创作简单的乐曲</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>会跳舞</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>能绘画、素描或书法</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>能雕刻、剪纸或泥塑</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>能设计板报、服装或家具</span>
						</div>
						<div>
							<input type="checkbox" name="eleven" value="1" /><span>能写一手好文章</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第12题：您所擅长获胜的活动 C：常规型(传统型)活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>会熟练的打印中文</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>会用外文打字机或复印机</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>能快速记笔记和抄写文章</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>善于整理保管文件和资料</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>善于从事事务性的工作</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>会用算盘</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>能在短时间内分类和处理大量文件</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>能使用计算机</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>能搜集数据</span>
						</div>
						<div>
							<input type="checkbox" name="twelve" value="1" /><span>善于为自己或集体做财务预算表</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第13题：你所喜欢的职业 R：实际型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>飞机机械师</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>野生动物专家</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>汽车维修工</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>木匠</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>测量工程师</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>无线电报务员</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>园艺师</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>长途公共汽车司机</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>电工</span>
						</div>
						<div>
							<input type="checkbox" name="thirteen" value="1" /><span>火车司机</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第14题：你所喜欢的职业 S：社会型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>街道、工会或妇联干部</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>小学、中学教师</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>精神病医生</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>婚姻介绍所工作人员</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>体育教练</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>福利机构负责人</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>心理咨询师</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>共青团干部</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>导游</span>
						</div>
						<div>
							<input type="checkbox" name="fourteen" value="1" /><span>国家机关工作人员</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第15题：你所喜欢的职业 I：研究型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>气象学或天文学者</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>生物学者</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>医学实验室的技术人员</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>人类学者</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>动物学者</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>化学者</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>数学者</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>科学杂志的编辑或作家</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>地质学者</span>
						</div>
						<div>
							<input type="checkbox" name="fifteen" value="1" /><span>物理学者</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第16题：你所喜欢的职业 E：事业型活动?：</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>厂长</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>电视剧/电影制片人</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>公司经理</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>销售员</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>不动产推销员</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>广告部长(经理)</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>体育活动主办者</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>销售部长(经理)</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>个体工商业者</span>
						</div>
						<div>
							<input type="checkbox" name="sixteen" value="1" /><span>企业管理咨询人员</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第17题：你所喜欢的职业 A：艺术型活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>乐队指挥</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>演奏家</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>作家</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>摄影家</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>记者</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>画家、书法家</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>歌唱家</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>作曲家</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>电影电视演员</span>
						</div>
						<div>
							<input type="checkbox" name="seventeen" value="1" /><span>电视节目主持人</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">第18题：你所喜欢的职业 C：常规型(传统型)活动?</div>
					<div class="answer">
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>会计师</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>银行出纳员</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>税收管理员</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>计算机操作员</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>薄记人员</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>成本核算员</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>文书档案管理员</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>打字员</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>法庭书记员</span>
						</div>
						<div>
							<input type="checkbox" name="eighteen" value="1" /><span>人员普查登记员</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第19题：您的能力类型简评 R型：机械操作能力?
						<div>19-24题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="nineteen" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="nineteen" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="nineteen" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="nineteen" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="nineteen" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="nineteen" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="nineteen" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第20题：您的能力类型简评 I型：科学研究能力?
						<div>19-24题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twenty" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twenty" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twenty" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twenty" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twenty" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twenty" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twenty" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第21题：您的能力类型简评 A型：艺术创作能力?
						<div>19-24题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyOne" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentyOne" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentyOne" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentyOne" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentyOne" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentyOne" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentyOne" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第22题：您的能力类型简评 S型：解释表达能力?
						<div>19-24题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyTwo" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentyTwo" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentyTwo" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentyTwo" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentyTwo" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentyTwo" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentyTwo" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第23题：您的能力类型简评 E型：商业洽谈能力?
						<div>19-24题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyThree" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentyThree" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentyThree" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentyThree" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentyThree" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentyThree" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentyThree" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第24题：您的能力类型简评 C型：事务执行能力?
						<div>19-24题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyFour" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentyFour" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentyFour" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentyFour" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentyFour" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentyFour" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentyFour" value="7" /><span>7分</span>
						</div>
					</div>
				</div>

				<div class="testPanel">
					<div class="problem">
						第25题：您的技能类型简评 R型：体育技能?
						<div>25-30题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyFive" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第26题：您的技能类型简评 I型：数学技能?
						<div>25-30题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyFive" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentyFive" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第27题：您的技能类型简评 A型：音乐技能?
						<div>25-30题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentySeven" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentySeven" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentySeven" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentySeven" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentySeven" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentySeven" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentySeven" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第28题：您的技能类型简评 S型：交际技能?
						<div>25-30题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyEight" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentyEight" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentyEight" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentyEight" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentyEight" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentyEight" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentyEight" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第29题：您的技能类型简评 E型：领导技能?
						<div>25-30题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="twentyNine" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="twentyNine" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="twentyNine" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="twentyNine" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="twentyNine" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="twentyNine" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="twentyNine" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
				<div class="testPanel">
					<div class="problem">
						第30题：您的技能类型简评 C型：办公技能?
						<div>25-30题是您在6个职业能力方面的自我评定表，您可先与同龄人比较出自己在每一方面的能力，然后斟酌后对自己的能力作评估。请选择适当的分值，数值越大表明您的能力越强。注意，每道题之间请勿选择同样的数字，因为人的每项能力不会完全一样的。</div>
					</div>
					<div class="answer">
						<div>
							<input type="radio" name="thirty" value="1" /><span>1分</span>
						</div>
						<div>
							<input type="radio" name="thirty" value="2" /><span>2分</span>
						</div>
						<div>
							<input type="radio" name="thirty" value="3" /><span>3分</span>
						</div>
						<div>
							<input type="radio" name="thirty" value="4" /><span>4分</span>
						</div>
						<div>
							<input type="radio" name="thirty" value="5" /><span>5分</span>
						</div>
						<div>
							<input type="radio" name="thirty" value="6" /><span>6分</span>
						</div>
						<div>
							<input type="radio" name="thirty" value="7" /><span>7分</span>
						</div>
					</div>
				</div>
			</div>
			<div class="npButtom">
				<%-- <form class="testForm" action="${path}hlandeResult" method="post"> --%>
				<input type="hidden" name="param" value="" />
				<div class="nextPro">下一题</div>
				<!-- </form> -->
			</div>
		</div>

	</div>
	<div class="pageBottom">
		<div>
			<div class="proTop">
				<div>霍兰德职业兴趣测试</div>
				<div>
					测试进度：第<span class="proIndex">1</span>/30题
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