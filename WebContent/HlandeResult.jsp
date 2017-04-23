<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet" href="${path}css/hlandeResult.css" />
<script type="text/javascript">
	$(document).ready(function() {
	})
</script>
</head>

<body style="background-color: #fff">
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
			<a href="${path}index.jsp">首页 > </a><a href="${path}OccuTest.jsp">专业测评 > </a><a href="${path}HlandeTest.jsp">霍兰德职业兴趣测试 > </a>霍兰德职业兴趣测试结果
		</div>
	</div>
	<div class="photos">
		<img src="${path}img/in1.png" />
	</div>
	<div class="pageCenter">
		<div class="testTitle">霍兰德职业兴趣测试</div>
		<div class="testContent">
			<h3>霍兰德职业兴趣测试完整版结果</h3>
			<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="mytable" style="margin-top: 5px;">
				<tbody>
					<tr>
						<td valign="center" colspan="2" bgcolor="#f4f4f4"><p>测试内容</p></td>
						<td width="81" valign="top"><p>R型</p>

							<p>实际型</p></td>
						<td width="81" valign="top" bgcolor="#f4f4f4"><p>I型</p>

							<p>研究型</p></td>
						<td width="81" valign="top"><p>A型</p>

							<p>艺术型</p></td>
						<td width="81" valign="top" bgcolor="#f4f4f4"><p>S型</p>

							<p>社会型</p></td>
						<td width="81" valign="top"><p>E型</p>

							<p>事业型</p></td>
						<td width="87" valign="top" bgcolor="#f4f4f4"><p>C型</p>

							<p>常规型</p></td>
					</tr>
					<tr>
						<td width="95" valign="top"><p>第一部份</p></td>
						<td width="96" valign="top"><p>兴趣</p></td>
						<c:forEach items="0,1,2,3,4,5" var="index">
							<td width="81" valign="top"><p>${fn:split(param.param,'-')[index]}</p></td>
						</c:forEach>
					</tr>
					<tr bgcolor="#f4f4f4">
						<td width="95" valign="top"><p>第二部份</p></td>
						<td width="96" valign="top"><p>擅长</p></td>
						<c:forEach items="6,7,8,9,10,11" var="index">
							<td width="81" valign="top"><p>${fn:split(param.param,'-')[index]}</p></td>
						</c:forEach>
					</tr>
					<tr>
						<td width="95" valign="top"><p>第三部份</p></td>
						<td width="96" valign="top"><p>喜欢</p></td>
						<c:forEach items="12,13,14,15,16,17" var="index">
							<td width="81" valign="top"><p>${fn:split(param.param,'-')[index]}</p></td>
						</c:forEach>
					</tr>
					<tr bgcolor="#f4f4f4">
						<td width="95" valign="top"><p>第四部份A</p></td>
						<td width="96" valign="top"><p>能力</p></td>
						<c:forEach items="18,19,20,21,22,23" var="index">
							<td width="81" valign="top"><p>${fn:split(param.param,'-')[index]}</p></td>
						</c:forEach>
					</tr>
					<tr>
						<td width="95" valign="top"><p>第四部份B</p></td>
						<td width="96" valign="top"><p>技能</p></td>
						<c:forEach items="24,25,26,27,28,29" var="index">
							<td width="81" valign="top"><p>${fn:split(param.param,'-')[index]}</p></td>
						</c:forEach>
					</tr>
					<tr bgcolor="#f4f4f4">
						<td valign="top" colspan="2"><p>总分(以10分制统计)</p></td>
						<c:forEach items="0,1,2,3,4,5" varStatus="status" var="score">
							<td width="81" valign="top">
								<p>
									<fmt:formatNumber type="number"
										value="${(fn:split(param.param,'-')[status.index]+fn:split(param.param,'-')[status.index+6]+fn:split(param.param,'-')[status.index+12]+fn:split(param.param,'-')[status.index+18]+fn:split(param.param,'-')[status.index+24])/4.4}"
										pattern="0.00" maxFractionDigits="2" />
								</p>
							</td>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="pageBottom">
		<h3>霍兰德职业索引——职业兴趣代码与其相应的职业对照表</h3>
		<div>
		<span>将您测验得分居第一位的职业类型找出来，对照下表，判断一下自己适合的职业类型。</span>
		R(实际型)：木匠、农民、操作X光的技师、工程师、飞机机械师、鱼类和野生动物专家、自动化技师、机械工(车工、钳工等)、电工、无线电报务员、火车司机、长途公共汽车司机、机械制图员、修理机器、电器师。<br>
		I(调查型)：气象学者、生物学者、天文学家、药剂师、动物学者、化学家、科学报刊编辑、地质学者、植物学者、物理学者、数学家、实验员、科研人员、科技作者。 <br>A(艺术型)：室内装饰专家、图书管理专家、摄影师、音乐教师、作家、演员、记者、诗人、作曲家、编剧、雕刻家、漫画家。
		S(社会型)：社会学者、导游、福利机构工作者、咨询人员、社会工作者、社会科学教师、学校领导、精神病工作者、公共保健护士。 <br>E(事业型)：推销员、进货员、商品批发员、旅馆经理、饭店经理、广告宣传员、调度员、律师、政治家、零售商。<br>
		C(常规型)：记账员、会计、银行出纳、法庭速记员、成本估算员、税务员、核算员、打字员、办公室职员、统计员、计算机操作员、秘书。 <br>
		 <span>下面介绍与你3个代号的职业兴趣类型一致的职业表,对照的方法如下：首先根据你的职业兴趣代号，在下表中找出相应的职业，
			例如你的职业兴趣代号是RIA ，那么牙科技术人员、陶工等是适合你兴趣的职业。然后寻找与你职业兴趣代号相近的职业， 如你的职业兴趣 tob_id_4299 代号是RIA，那么，其他由这三个字母组合成的编号(入IRA、IAR 、ARI等) 对应的职业，也较适合你的兴趣。</span>
		RIA：牙科技术员、陶工、建筑设计员、模型工、细木工、制作链条人员。 <br>RIS：厨师、林务员、跳水员、潜水员、染色员、电器修理、眼镜制作、电工、纺织机器装配工、服务员、装玻璃工人、发电厂工人、焊接工。<br>
		RIE；建筑和桥梁工程、环境工程、航空工程、公路工程、电力工程、信号工程、电话工程、一般机械工程、自动工程、矿业工程、海洋工程、交通工程技术人<br>
		员、制图员、家政经济人员、计量员、农民、农场工人、农业机械操作、清洁工、无线电修理、汽车修理、手表修理、管工、线路装配工、工具仓库管理员。<br>
		RIC：船上工作人员、接待员、杂志保管员、牙医助手、制帽工、磨坊工、石匠、机器制造、机车(火车头)制造、农业机器装配、汽车装配工、缝纫机装配工、 钟表装配和检验、电动器具装配、鞋匠、锁匠、货物检验员、电梯机修工、托儿所所长、钢琴调音员、装配工、印刷工、建筑钢铁工作、卡车司机。<br>
		RAI：手工雕刻、玻璃雕刻、制作模型人员、家具木工、制作皮革品、手工绣花、手工钩针纺织、排字工作、印刷工作、图画雕刻、装订工。<br>
		RSE：消防员、交通巡警、警察、门卫、理发师、房间清洁工、屠夫、锻工、开凿工人、管道安装工、出租汽车驾驶员、货物搬运工、送报员、勘探员、娱乐场所的服务员、起卸机操作工、灭害虫者、电梯操作工、厨房助手。<br>
		RSI：纺织工、编织工、农业学校教师、某些职业课程教师(诸如艺术、商业、技术、工艺课程)、雨衣上胶工。<br> REC：抄水表员、保姆、实验室动物饲养员、动物管理员。<br>
		REI：轮船船长、航海领航员、大副、试管实验员。<br>RES：旅馆服务员、家畜饲养员、渔民、渔网修补工、水手长、收割机操作工、搬运行李工人、公园服务员、救 生员、登山导游、火车工程技术员、建筑工作、铺轨工人。<br>
		RCI：测量员、勘测员、仪表操作者、农业工程技术、化学工程技师、民用工程技师、石油工程技师、资料室管理员、探矿工、煅烧工、烧窖工、矿工、保养工、
		磨床工、取样工、样品检验员、纺纱工、炮手、漂洗工、电焊工、锯木工、刨床工、制帽工、手工缝纫工、油漆工、染色工、按摩工、木匠、农民建筑工作、电影放 映员、勘测员助手。<br>
		RCS：公共汽车驾驶员、一等水手、游泳池服务员、裁缝、建筑工作、石匠、烟囱修建工、混凝土工、电话修理工、爆炸手、邮递员、矿工、裱糊工人、纺纱工。<br> RCE：打井工、吊车驾驶员、农场工人、邮件分类员、铲车司机、拖拉机司机。<br>
		IAS：普通经济学家、农场经济学家、财政经济学家、国际贸易经济学家、实验心理学家、工程心理学家、心理学家、哲学家、内科医生、数学家。<br> IAR：人类学家、天文学家、化学家、物理学家、医学病理、动物标本剥制者、化石修复者、艺术品管理者。<br>
		ISE：营养学家、饮食顾问、火灾检查员、邮政服务检查员。<br> ISC：侦察员、电视播音室修理员、电视修理服务员、验尸室人员、编目录者、医学实验定技师、调查研究者。 <br>ISR：水生生物学者，昆虫学者、微生物学家、配镜师、矫正视力者、细菌学家、牙科医生、骨科医生。<br>
		ISA：实验心理学家、普通心理学家、发展心理学家、教育心理学家、社会心理学家、临床心理学家、目标学家、皮肤病学家、精神病学家、妇产科医师、眼科医生、 五官科医生、医学实验室技术专家、民航医务人员、护士。<br>
		IES：细菌学家、生理学家、化学专家、地质专家、地理物理学专家、纺织技术专家、医院药剂师、工业药剂师、药房营业员。 <br>IEC：档案保管员、保险统计员。 <br>ICR：质量检验技术员、地质学技师、工程师、法官、图书馆技术辅导员、计算机操作员、医院听诊员、家禽检查员。<br>
		IRA：地理学家、地质学家、声学物理学家、矿物学家、古生物学家、石油学家、地震学家、声学物理学家、原子和分子物理学家、电学和磁学物理学家、气象学家、设计审核员、人口统计学家、数学统计学家、外科医生、城市规划家、气象员。<br>
		IRS：流体物理学家、物理海洋学家、等离子体物理学家、农业科学家、动物学家、食品科学家、园艺学家、植物学家、细菌学家、解剖学家、动物病理学家、作
		物病理学家、药物学家、生物化学家、生物物理学家、细胞生物学家、临床化学家、遗传学家、分子生物学家、质量控制工程师、地理学家、兽医、放射性治疗技 师。<br>
		IRE：化验员、化学工程师、纺织工程师、食品技师、渔业技术专家、材料和测试工程师、电气工程师、土木工程师、航空工程师、行政官员、冶金专家、原子核工程师、陶瓷工程师、地质工程师、电力工程量、口腔科医生、牙科医生。<br>
		IRC：飞机领航员、飞行员、物理实验室技师、文献检查员、农业技术专家、动植物技术专家、生物技师、油管检查员、工商业规划者、矿藏安全检查员、纺织品检验员、照相机修理者、工程技术员、编计算程序者、工具设计者、仪器维修工。<br>
		CRI：簿记员、会计、记时员、铸造机操作工、打字员、按键操作工、复印机操作工。 <br>CRS：仓库保管员、档案管理员、缝纫工、讲述员、收款人。<br> CRE：标价员、实验室工作者、广告管理员、自动打字机操作员、电动机装配工、缝纫机操作工。<br>
		CIS：记账员、顾客服务员、报刊发行员、土地测量员、保险公司职员、会计师、估价员、邮政检查员、外贸检查员。<br> CIE：打字员、统计员、支票记录员、订货员、校对员、办公室工作人员。<br> CIR：校对员、工程职员、海底电报员、检修计划员、发扳员。<br>
		CSE：接待员、通讯员、电话接线员、卖票员、旅馆服务员、私人职员、商学教师、旅游办事员。<br> CSR：运货代理商、铁路职员、交通检查员、办公室通信员、薄记员、出纳员、银行财务职员。 <br>CSA：秘书、图书管理员、办公室办事员。 <br>CER：邮递员、数据处理员、办公室办事员。<br>
		CEI：推销员、经济分析家。<br> CES：银行会计、记账员、法人秘书、速记员、法院报告人。<br> ECI：银行行长、审计员、信用管理员、地产管理员、商业管理员。 <br>ECS：信用办事员、保险人员、各类进货员、海关服务经理、售货员，购买员、会计。<br>
		ERI：建筑物管理员、工业工程师、农场管理员、护士长、农业经营管理人员。<br> ERS：仓库管理员、房屋管理员、货栈监督管理员。<br> ERC：邮政局长、渔船船长、机械操作领班、木工领班、瓦工领班、驾驶员领班。 <br>EIR：科学、技术和有关周期出版物的管理员。<br>
		EIC：专利代理人、鉴定人、运输服务检查员、安全检查员、废品收购人员。<br> EIS：警官、侦察员、交通检验员、安全咨询员、合同管理者、商人。 <br>EAS：法官、律师、公证人。 <br>EAR：展览室管理员、舞台管理员、播音员、训兽员。<br>
		ESC：理发师、裁判员、政府行政管理员、财政管理员、I程管理员、职业病防治、售货员、商业经理、办公室主任、人事负责人、调度员。<br> ESR：家具售货员、书店售货员、公共汽车的驾驶员、日用品售货员、护士长、自然科学和工程的行政领导。<br>
		ESI：博物馆管理员、图书馆管理员、古迹管理员、饮食业经理、地区安全服务管理员、技术服务咨询者、超级市场管理员、零售商品店店员、批发商、出租汽车服务站调度。<br>
		ESA：博物馆馆长、报刊管理员、音乐器材售货员、广告商售画营业员、导游、(轮船或班机上的)事务长、飞机上的服务员、船员、法官、律师。 <br>ASE：戏剧导演、舞蹈教师、广告撰稿人，报刊、专栏作者、记者、演员、英语翻译。<br>
		ASI：音乐教师、乐器教师、美术教师、管弦乐指挥，合唱队指挥、歌星、演奏家、哲学家、作家、广告经理、时装模特。 <br>AER：新闻摄影师、电视摄影师、艺术指导、录音指导、丑角演员、魔术师、木偶戏演员、骑士、跳水员。<br> AEI：音乐指挥、舞台指导、电影导演。<br>
		AES：流行歌手、舞蹈演员、电影导演、广播节目主持人、舞蹈教师、口技表演者、喜剧演员、模特。 <br>AIS：画家、剧作家、编辑、评论家、时装艺术大师、新闻摄影师、男演员、文学作者。<br> AIE：花匠、皮衣设计师、工业产品设计师、剪影艺术家、复制雕刻品大师。<br>
		AIR：建筑师、画家、摄影师、绘图员、环境美化工、雕刻家、包装设计师、陶器设计师、绣花工、漫画工。 <br>SEC：社会活动家、退伍军人服务官员、工商会事务代表、教育咨询者、宿舍管理员、旅馆经理、饮食服务管理员。<br> SER：体育教练、游泳指导。<br>
		SEI：大学校长、学院院长、医院行政管理员、历史学家、家政经济学家、职业学校教师、资料员。 <br>SEA：娱乐活动管理员、国外服务办事员、社会服务助理、一般咨询者、宗教教育工作者。<br> SCE：部长助理、福利机构职员、生产协调人、环境卫生管理人员、戏院经理、餐馆经理、售票员。<br>
		SRI：外科医师助手、医院服务员。<br>SRE：体育教师、职业病治疗者、体育教练、专业运动员、房管员、儿童家庭教师、警察、引座员、传达员、保姆。<br> SRC：护理员、护理助理、医院勤杂工、理发师、学校儿童服务人员。<br>
		SIA：社会学家、心理咨询者、学校心理学家、政治科学家、大学或学院的系主任、大学或学院的教育学教师、大学农业教师、大学工程和建筑课程的教师、大学法律教师、大学数学、医学、物理、社会科学和生命科学的教师、研究生助教、成人教育教师。<br>
		SIE：营养学家、饮食学家、海关检查员、安全检查员、税务稽查员、校长。 <br>SIC：描图员、兽医助手、诊所助理、体检检查员、监督缓刑犯的工作者、娱乐指导者、咨询人员、社会科学教师。<br> SIR：理疗员、救护队工作人员、手足病医生、职业病治疗助手。<br>
		</div>
		
	</div>
	<div class="footer"></div>
</body>
</html>