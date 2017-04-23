package cn.gaokao.refen.Entity;

import java.util.ArrayList;
import java.util.List;

public class Occur {
	private String param;
	private List<String> result = new ArrayList<String>();// 特征
	private String occur;// 领域
	private String descr;// 描述
	private String summa;// 摘要

	public Occur(String param) {
		this.param = param;
		switch (this.param) {
		case "ESFP":
			result.add("外向、和善、接受性、乐于分享喜乐予他人。");
			result.add("喜欢与他人一起行动且促成事件发生，在学习时亦然。");
			result.add("知晓事件未来的发展并会热列参与。");
			result.add("最擅长于人际相处能力及具备完备常识，很有弹性能立即 适应他人与环境。");
			result.add("对生命、人、物质享受的热爱者。");
			summa = "引人瞩目的表演者型";
			descr = "外向，友善，包容。热爱生活、人类和物质上的享受。喜欢与别人共事。在工作上，讲究常识和实用性，注意现实的情况，使工作富趣味性。富灵活性、即兴性，自然不做作，易接受新朋友和适应新环境。与别人一起学习 新技能可以达到最佳的学习效果。<br><br>"
					+ "ESFP型的人乐意与人相处，有一种真正的生活热情。他们顽皮活泼，通过真诚和玩笑使别人感到事情更加有趣。 ESFP型的人脾气随和、适应性强，热情友好和慷慨大方。他们擅长交际，常常是别人的“注意中心”。他们热情而乐于合作地参加各种活动和节目，而且通常立刻能应对几种活动。<br><br>"
					+ "ESFP型的人是现实的观察者，他们按照事物的本身去对待并接受它们。他们往往信任自己能够听到、闻到、触摸和看到的事物，而不是依赖于理论上的解释。因为他们喜欢具体的事实，对于细节有很好的记忆力，所以他们能从亲身的经历中学到最好的东西。共同的感觉给予他们与人和物相处的实际能力。他们喜欢收集信息，从中观察可能自然出现的解决方法。<br><br>"
					+ "ESFP型的人对于自我和他人都能容忍和接受，往往不会试图把自己的愿望强加于他人。ESFP型的人通融和有同情心，通常许多人都真心地喜欢他们。他们能够让别人采纳他们的建议，所以他们很擅于帮助冲突的各方重归于好。他们寻求他人的陪伴，是很好的交淡者。他们乐于帮助旁人，偏好以真实有形的方式给予协助。ESFP型的人天真率直，很有魅力和说服力。他们喜欢意料不到的事情，喜欢寻找给他人带来愉快和意外惊喜的方法。";
			occur = "您适合的领域有：消费类商业、服务业领域 广告业、娱乐业领域 旅游业、社区服务等。";
			break;
		case "ESTP":
			result.add("擅长现场实时解决问题—解决问题者。");
			result.add("喜欢办事并乐于其中及过程。");
			result.add("倾向于喜好技术事务及运动，交结同好友人。");
			result.add("具适应性、容忍度、务实性；投注心力于会很快具 成效工作。");
			result.add("不喜欢冗长概念的解释及理论。");
			result.add("最专精于可操作、处理、分解或组合的真实事务。");
			summa = "魅力四射的挑战者型";
			descr = "灵活、忍耐力强，实际，注重结果。觉得理论和抽象的解释非常无趣。喜欢积极地采取行动解决问题。注重当前，自然不做作，享受和他人在一起的时刻。喜欢物质享受和时尚。学习新事物最有效的方式是通过亲身感受和练习。<br><br>"
					+ "ESTP型的人不会焦虑，因为他们是快乐的。ESTP型的人活跃、随遇而安、天真率直。他们乐于享受现在的一切而不是为将来计划什么。ESTP型的人很现实，他们信任和依赖于自己对这个世界的感受。他们是好奇而热心的观察者。因为他们接受现在的一切，所以他们思维开阔，能够容忍自我和他人。<br><br>"
					+ "ESTP型的人喜欢处理、分解与恢复原状的真实事物。ESTP型的人喜欢行动而不是漫谈，当问题出现时，他们乐于去处理。他们是优秀的解决问题的人，这是因为他们能够掌握必要的事实情况，然后找到符合逻辑的明智的解决途径，而无需浪费大量的努力或精力。他们会成为适宜外交谈判的人，他们乐于尝试非传统的方法，而且常常能够说服别人给他们一个妥协的机会。他们能够理解晦涩的原则，在符合逻辑的基础上，而不是基于他们对事物的感受之上做出决定。因此，他们讲求实效，在情况必须时非常强硬。<br><br>"
					+ "在大多数的社交场合中，ESTP型的人很友善，富有魅力、轻松自如而受人欢迎。在任何有他们的场合中，他们总是爽直、多才多艺和有趣，总有没完没了的笑话和故事。他们善于通过缓和气氛以及使冲突的双方相互协调，从而化解紧张的局势。";
			occur = "您适合的领域有：贸易、商业、某些特殊领域、服务业、金融证券业、娱乐、体育、艺术领域等。";
			break;
		case "ESFJ":
			result.add("诚挚、爱说话、合作性高、受 欢迎、光明正大 的—天生的 合作者及活跃的组织成员。");
			result.add("重和谐且长于创造和谐。");
			result.add("常作对他人有益事务。");
			result.add("给予鼓励及称许会有更佳工作成效。");
			result.add("最有兴趣于会直接及有形影响人们生活的事务。");
			result.add("喜欢与他人共事去精确且准时地完成工作。");
			descr = "有爱心、有责任心、合作。希望周边的环境温馨而和谐，并为此果断地营造这样的环境。喜欢和他人一起精确并及时地完成任务。忠诚，即使在细微地事情上也如此。能体察到他人在日常生活中的所需并竭尽全力帮助。希望自己和自己的所为能受到他人的认可和赏识。<br><br>"
					+ "ESFJ型的人通过直接的行动和合作积极地以真实、实际的方法帮助别人。他们友好、富有同情心和责任感。ESFJ型的人把他们同别人的关系放在十分重要的位置，所以他们往往具有和睦的人际关系，并且通过很大的努力以获得和维持这种关系。事实上，他们常常理想化"
					+ "自己欣赏的人或物。ESFJ型的人往往对自己以及自己的成绩十分欣赏，因而他们对于批评或者别人的漠视很敏感。通常他们很果断，表达自己的坚定的主张，乐于事情能很快得到解决。<br><br>"
					+ "ESFJ型的人很现实，他们讲求实际、实事求是和安排有序。他们参与并能记住重要的事情和细节，乐于别人也能对自己的事情很确信。他们在自己的个人经历或在他们所信赖之人的经验之上制定计划或得出见解。他们知道并参与周围的物质世界，并喜欢具有主动性和创造性。"
					+ "ESFJ型的人十分小心谨慎，也非常传统化，因而他们能恪守自己的责任与承诺。他们支持现存制度，往往是委员会或组织机构中积极主动和乐于合作的成员，他们重视并能保持很好的社交关系。他们不辞劳苦地帮助他人，尤其在遇到困难或取得成功时，他们都很积极活跃。";
			summa = "善于照顾人的主人型";
			occur = "您适合的领域有：消费类商业、服务业领域 广告业、娱乐业领域 旅游业、社区服务等。";
			break;
		case "ESTJ":
			result.add("务实、真实、事实倾向，具企业或技术天份。");
			result.add("不喜欢抽象理论；最喜欢学习可立即运用事理。");
			result.add("喜好组织与管理活动且专注以最有效率方式行事以达致成效。");
			result.add("具决断力、关注细节且很快作出决策—优秀行政者。");
			result.add("会忽略他人感受。");
			result.add("喜作领导者或企业主管。");
			summa = "卓越领导式的将军型";
			descr = "灵活、忍耐力强，实际，注重结果。觉得理论和抽象的解释非常无趣。喜欢积极地采取行动解决问题。注重当前，自然不做作，享受和他人在一起的时刻。喜欢物质享受和时尚。学习新事物最有效的方式是通过亲身感受和练习。<br><br>"
					+ "ESTJ型的人不会焦虑，因为他们是快乐的。ESTJ型的人活跃、随遇而安、天真率直。他们乐于享受现在的一切而不是为将来计划什么。ESTJ型的人很现实，他们信任和依赖于自己对这个世界的感受。他们是好奇而热心的观察者。因为他们接受现在的一切，所以他们思维开阔，能够容忍自我和他人。ESTP型的人喜欢处理、分解与恢复原状的真实事物。<br><br>"
					+ "ESTJ型的人喜欢行动而不是漫谈，当问题出现时，他们乐于去处理。他们是优秀的解决问题的人，这是因为他们能够掌握必要的事实情况，然后找到符合逻辑的明智的解决途径，而无需浪费大量的努力或精力。他们会成为适宜外交谈判的人，他们乐于尝试非传统的方法，而且常常能够说服别人给他们一个妥协的机会。他们能够理解晦涩的原则，在符合逻辑的基础上，而不是基于他们对事物的感受之上做出决定。因此，他们讲求实效，在情况必须时非常强硬。<br><br>"
					+ "在大多数的社交场合中，ESTJ型的人很友善，富有魅力、轻松自如而受人欢迎。在任何有他们的场合中，他们总是爽直、多才多艺和有趣，总有没完没了的笑话和故事。他们善于通过缓和气氛以及使冲突的双方相互协调，从而化解紧张的局势。";
			occur = "您适合的领域有：无明显领域特征。";
			break;
		case "ISFP":
			result.add("羞怯的、安宁和善地、敏感的、亲切的、且行事谦虚。");
			result.add("喜于避开争论，不对他人强加已见或价值观。");
			result.add("无意于领导却常是忠诚的追随者。");
			result.add("办事不急躁，安于现状无意于以过度的急切或努力破坏现况，且非成果导向。");
			result.add("喜欢有自有的空间及照自订的时程办事。");
			summa = "浪漫另类的艺术家型";
			descr = "沉静，友善，敏感和仁慈。欣赏目前和他们周遭所发生的事情。喜欢有自己的空间，做事又能把握自己的时间。忠于自己的价值观，忠于自己所重视的人。不喜欢争论和冲突，不会强迫别人接受自己的意见或价值观。<br><br>"
					+ "ISFP型的人平和、敏感，他们保持着许多强烈的个人理想和自己的价值观念。他们更多地是通过行为而不是言辞表达自己深沉的情感。ISFP型的人谦虚而缄默，但实际上他们是具有巨大的友爱和热情之人，但是除了与他们相知和信赖的人在一起外，他们不经常表现出自我的另一面。因为ISFP型的人不喜欢直接地自我表达，所以常常被误解。<br><br>"
					+ "ISFP型的人耐心、灵活，很容易与他人相处，很少支配或控制别人。他们很客观，以一种相当实事求是的方式接受他人的行为。他们善于观察周围的人和物，却不寻求发现动机和含义。ISFP型的人完全生活在现在，所以他们的准备或计划往往不会多于必需，他们是很好的短期计划制定者。因为他们喜欢享受目前的经历，而不继续向下一个目标兑现，所以他们对完成工作感到很放松。<br><br>"
					+ "ISFP型的人对于从经历中直接了解和感受的东西很感兴趣，常常富有艺术天赋和审美感，力求为自己创造一个美丽而隐蔽的环境。没有想要成为领导者，ISFP型的人经常是忠诚的追随者和团体成员。因为他们利用个人的价值标准去判断生活中的每一件事，所以他们喜欢那些花费时间去认识他们和理解他们内心的忠诚之人。他们需要最基本的信任和理解，在生活中需要和睦的人际关系，对于冲突和分歧则很敏感。";
			occur = "您适合的领域有：手工艺、艺术领域、医护领域、商业、服务业领域等。";
			break;
		case "ISTP":
			result.add("冷静旁观者—安静、预留余地、弹性及会以无偏见的好奇心与未预期原始的幽默观察与分析。");
			result.add("有兴趣于探索原因及效果，技术事件是为何及如何运作且使用逻辑的原理组构事实、重视效能。");
			result.add("擅长于掌握问题核心及找出解决方式。");
			result.add("分析成事的缘由且能实时由大量资料中找出实际问题的核心。");
			summa = "求新求变的冒险家型";
			descr = "容忍，有弹性;是冷静的观察者，但当有问题出现，便迅速行动，找出可行的解决方法。能够分析哪些东西可以使事情进行顺利，又能够从大量资料中，找出实际问题的重心。很重视事件的前因后果，能够以理性的原则把事实组织起来，重视效率。<br><br>"
					+ "ISTP型的人坦率、诚实、讲求实效，他们喜欢行动而非漫谈。他们很谦逊，对于完成工作的方法有很好的理解力。<br><br>"
					+ "ISTP型的人擅长分析，所以他们对客观含蓄的原则很有兴趣。他们对于技巧性的事物有天生的理解力，通常精于使用工具和进行手工劳动。他们往往做出有条理而保密的决定。他们仅仅是按照自己所看到的、有条理而直接地陈述事实。ISTP型的人好奇心强，而且善于观察，只有理性、可靠的事实才能使他们信服。他们重视事实，简直就是有关他们知之甚深的知识的宝库。他们是现实主义者，所以能够很好地利用可获得的资源，同时他们擅于把握时机，这使他们变得很讲求实效。<br><br>"
					+ "ISTP型的人平和而寡言，往往显得冷酷而清高，而且容易害羞，除了是与好朋友在一起时。他们平等、公正。他们往往受冲动的驱使，对于即刻的挑战和问题具有相当的适应性和反应能力。因为他们喜欢行动和兴奋的事情，所以他们乐于户外活动和运动。";
			occur = "您适合的领域有：技术领域 证券、金融业、贸易、商业领域、户外、运动、艺术等。";
			break;
		case "ISFJ":
			result.add("安静、和善、负责任且有良心。");
			result.add("行事尽责投入。");
			result.add("安定性高，常居项目工作或团体之安定力量。");
			result.add("愿投入、吃苦及力求精确。");
			result.add("兴趣通常不在于科技方面。对细节事务有耐心。");
			result.add("忠诚、考虑周到、知性且会关切他人感受。");
			result.add("致力于创构有序及和谐的工作与家庭环境。");
			summa = "让人依靠的照顾者型";
			descr = "沉静，友善，有责任感和谨慎。能坚定不移地承担责任。做事贯彻始终、不辞劳苦和准确无误。忠诚，替人着想，细心;往往记着他所重视的人的种种微小事情，关心别人的感受。努力创造一个有秩序、和谐的工作和家居环境。<br><br>"
					+ "ISFJ型的人忠诚、有奉献精神和同情心，理解别人的感受。他们意志清醒而有责任心，乐于为人所需。<br><br>"
					+ "ISFJ型的人十分务实，他们喜欢平和谦逊的人。他们喜欢利用大量的事实情况，对于细节则有很强的记力。他们耐心地 对待任务的整个阶段，喜欢事情能够清晰明确。<br><br>"
					+ "ISFJ型的人具有强烈的职业道德，所以他们如果知道自己的行为真正有用时，会对需要完成之事承担责任。他们准确系统地完成任务。他们具有传统的价值观，十分保守。他们利用符合实际的判断标准做决定，通过出色的注重实际的态度增加了稳定性。<br><br>"
					+ "ISFJ型的人平和谦虚、勤奋严肃。他们温和、圆通，支持朋友和同伴。他们乐于协助别人，喜欢实际可行地帮助他人。他们利用个人热情与人交往，在困难中与他人和睦相处。ISFJ型的人不喜欢表达个人情感，但实际上对于大多数的情况和事件都具有强烈的个人反应。他们关心、保护朋友，愿意为朋友献身，他们有为他人服务的意识，愿意完成他们的责任和义务。";
			occur = "您适合的领域有：领域特征不明显，较相关的如：医护领域、消费类商业、服务业领域";
			break;
		case "ISTJ":
			result.add("严肃、安静、藉由集中心 志与全力投入、及可被信赖获致成功。");
			result.add("行事务实、有序、实际 、 逻辑、真实及可信赖。");
			result.add("十分留意且乐于任何事（工作、居家、生活均有良好组织及有序。");
			result.add("负责任。");
			result.add("重视传统与忠诚。");
			result.add("照设定成效来作出决策且不畏阻挠与闲言会坚定为之。");
			result.add("传统性的思考者或经理。");
			summa = "按部就班的公务员型";
			descr = "沉静，认真;贯彻始终、得人信赖而取得成功。讲求实际，注重事实和有责任感。能够合情合理地去决定应做的事情，而且坚定不移地把它完成，不会因外界事物而分散精神。以做事有次序、有条理为乐—不论在工作上，家庭上或者生活上。重视传统和忠诚。<br><br>"
					+ "ISTJ型的人是严肃的、有责任心的和通情达理的社会坚定分子。他们值得信赖，他们重视承诺，对他们来说，言语就是庄严的宣誓。ISTJ型的人工作缜密，讲求实际，很有头脑也很现实。他们具有很强的集中力、条理性和准确性。无论他们做什么，都相当有条理和可靠。他们具有坚定不移、深思熟虑的思想，一旦他们着手自己相信是最好的行动方法时，就很难转变或变得沮丧。<br><br>"
					+ "ISTJ型的人特别安静和勤奋，对于细节有很强的记忆和判断。他们能够引证准确的事实支持自己的观点，把过去的经历运用到现在的决策中。他们重视和利用符合逻辑、客观的分析，以坚持不懈的态度准时地完成工作，并且总是安排有序，很有条理。他们重视必要的理论体系和传统惯例，对于那些不是如此做事的人则很不耐烦。<br><br>"
					+ "ISTJ型的人总是很传统、谨小甚微。他们聆听和喜欢确实、清晰地陈述事物。ISTJ型的人天生不喜欢显露，即使危机之时，也显得很平静。他们总是显得责无旁贷、坚定不变、但是在他们冷静的外表之下，也许有强烈却很少表露的反应。";
			occur = "您适合的领域有：工商业领域、政府机构 金融银行业、政府机构、技术领域、医务领域。";
			break;
		case "ENFJ":
			result.add("热忱、易感应及负责任的--具能鼓励他人的领导风格。");
			result.add("对别人所想或希求会表达真正关切且切实用心去处理。");
			result.add("能怡然且技巧性地带领团体讨论或演示文稿提案。");
			result.add("爱交际、受欢迎及富同情心。");
			result.add("对称许及批评很在意。");
			result.add("喜欢带引别人且能使别人或团体发挥潜能。");
			summa = "理性特质的教师型";
			descr = "温情，有同情心，反应敏捷，有责任感。非常关注别人的情绪、需要和动机。善于发现他人的潜能，并希望能帮助他们实现。能够成为个人或群体成长和进步的催化剂。忠诚，对赞美和批评都能做出积极地回应。友善、好社交。在团体中能很好地帮助他人，并有鼓舞他人的领导能力。<br><br>"
					+ "ENFJ型的人热爱人类，他们认为人的感情是最重要的。而且他们很自然地关心别人，以热情的态度对待生命，感受与个人相关的所有事物。由于他们很理想化，按照自己的价值观生活，因此ENFJ型的人对于他们所尊重和敬佩的人、事业和机构非常忠诚。他们精力充沛、满腔热情、富有责任感、勤勤勤恳恳、锲而不舍。<br><br>"
					+ "ENFJ型的人具有自我批评的自然倾向。然而，他们对他人的情感具有责任心，所以ENFJ型的人很少在公共场合批评人。他们敏锐地意识到什么是(或不是)合适的行为。他们彬彬有礼、富有魅力、讨人喜欢、深谙社会。ENFJ型的人具有平和的性格与忍耐力，他们长于外交，擅长在自己的周围激发幽默感。他们是天然的领导者，受人欢迎而有魅力。他们常常得利于自己口头表达的天份，愿意成为出色的传播工作者。<br><br>"
					+ "ENFJ型的人在自已对情况感受的基础上做决定，而不是基于事实本身。他们对显而易见的事物之外的可能性，以及这些可能性以怎样的方式影响他人感兴趣。ENFJ型的人天生具有条理性，他们喜欢一种有安排的世界，并且希望别人也是如此。即使其他人正在做决定，他们还是喜欢把问题解决了。ENFJ型的人富有同情心和理解力，愿意培养和支持他人。他们能很好地理解别人，有责任感和关心他人。由于他们是理想主义者，因此他们通常能看到别人身上的优点。";
			occur = "您适合的领域有：培训、咨询、教育、新闻传播、公共关系、文化艺术。";
			break;
		case "INFJ":
			result.add("因为坚忍、创意及必须达成的意图而能成功。");
			result.add("会在工作中投注最大的努力。");
			result.add("默默强力的、诚挚的及用心的关切他人。");
			result.add("因坚守原则而受敬重。");
			result.add("提出造福大众利益的明确远景而为人所尊敬与追随。");
			result.add("追求创见、关系及物质财物的意义及关联。");
			result.add("想了解什么能激励别人及对他人具洞察力。");
			result.add("光明正大且坚信其价值观。");
			result.add("有组织且果断地履行其愿景。");
			summa = "有独特构思的理论家或思考者";
			descr = "从整体角度去看待事物，并很快将新获取的信息综合成整体的模式。相信自己构思的理论，而不是相信权威和他人的理论，因此有独特的、创造性的观点。但例行事物使自己的创造性受到了一定的制约。内在地运用自己总结的抽象观点、知觉去看待事物，计划未来。<br><br>"
					+ "运用思维做出逻辑性的判定，而不会以情感为依据做出判断。用批判的眼光审视一切，如果形势需要会很坚强、很果断。<br><br>"
					+ "是优秀的、目光远大的规划者，在群体和组织中经常升到领导者的位置上。独立性强，更相信自己的，而不是他人感知的判断。会用最严格的标准要求自己。<br><br>"
					+ "可以清楚地看到未来的可能性，并竭力去实施自己的想法。喜欢来自多方面的挑战，愿意做综合理论性和抽象化的工作。为挑战目标，做出一个整体布局并设想各种挑战。高度重视知识，要求本人和他人办事有能力。尤其讨厌不知所指、混乱和低效率。";
			occur = "您适合的领域有：决策者、研究人员。";
			break;
		case "ENTP":
			result.add("反应快、聪明、长于多样事务。");
			result.add("具激励伙伴、敏捷及直言讳专长。");
			result.add("会为了有趣对问题的两面加予争辩。");
			result.add("对解决新及挑战性的问题富有策略，但会轻忽或厌烦经常的任务与细节。");
			result.add("兴趣多元，易倾向于转移至新生的兴趣。");
			result.add("对所想要的会有技巧地找出逻辑的理由。");
			result.add("长于看清础他人，有智能去解决新或有挑战的问题 。");
			summa = "推陈出新的发明家型";
			descr = "反应快、睿智，有激励别人的能力，警觉性强、直言不讳。在解决新的、具有挑战性的问题时机智而有策略。善于找出理论上的可能性，然后再用战略的眼光分析。善于理解别人。不喜欢例行公事，很少会用相同的方法做 相同的事情，倾向于一个接一个的发展新的爱好。<br><br>"
					+ "ENTP型的人喜欢兴奋与挑战。他们热情开放、足智多谋、健谈而聪明，擅长于许多事情，不断追求增加能力和个人权力。ENTP型的人天生富有想象力，他们深深地喜欢新思想，留心一切可能性。他们有很强的首创精神，擅于运用创造冲动。<br><br>"
					+ "ENTP型的人视灵感高于其他的一切，力求使他们的新颖想法转变为现实。他们好奇、多才多艺、适应性强，在解决挑战性和理论性问题时善于随机应变。ENTP型的人灵活而率直，能够轻易地看出任何情 况中的缺点，乐于出于兴趣争论问题的某方面。他们有极好的分析能力，是出色的策略谋划者。他们几乎一直能够为他们所希望的事情找出符合逻辑的推理。大多数的ENTP型人喜欢审视周围的环境，认为多数的规则和章程如果不被打破，便意味着屈从。有时他们的态度不从习俗，乐于帮助别人超出可被接受和被期望的事情。他们喜欢自在地生活，在每天的生活中寻找快乐和变化。<br><br>"
					+ "ENTP型的人富有想象力地处理社会关系，常常有许多的朋友和熟人。他们表现得很乐观，具有幽默感。ENTP型的人吸引和鼓励同伴，通过他们富有感染力的热情，鼓舞别人加入他们的行动中。他们喜欢努力理解和回应他人，而不是判断他人。";
			occur = "您适合的领域有：投资顾问、项目策划、投资银行、自我创业、市场营销、创造性领域、公共关系、政治等。";
			break;
		case "ENTJ":
			result.add("坦诚、具决策力的活动领导者。");
			result.add("长于发展与实施广泛的系统以解决组织的问题。");
			result.add("专精于具内涵与智能的谈话如对公众演讲。");
			result.add("乐于经常吸收新知且能广开信息管道。");
			result.add("易生过度自信，会强于表达自已创见。");
			result.add("喜于长程策划及目标设定 ");
			summa = "外刚内柔的领袖型";
			descr = "坦诚、果断，有天生的领导能力。能很快看到公司/组织程序和政策中的不合理性和低效能性，发展并实施有效和全面的系统来解决问题。善于做长期的计划和目标的设定。通常见多识广，博览群书，喜欢拓广自己的知识面 并将此分享给他人。在陈述自己的想法时非常强而有力。<br><br>"
					+ "ENTJ型的人是伟大的领导者和决策人。他们能轻易地看出事物具有的可能性，很高兴指导别人，使他们的想象成为现实。他们是头脑灵活的思想家和伟大的长远规划者。因为ENTJ型的人很有条理和分析能力，所以他们通常对要求推理和才智的任何事情都很擅长。为了在完成工作中称职，他们通常会很自然地看出所处情况中可能存在的缺陷，并且立刻知道如何改进。他们力求精通整个体系，而不是简单地把它们做为现存的接受而已。<br><br>"
					+ "ENTJ型的人乐于完成一些需要解决的复杂问题，他们大胆地力求掌握使他们感兴趣的任何事情。ENTJ型的人把事实看得高于一切，只有通过逻辑的推理才会确信。ENTJ型的人渴望不断增加自己的知识基础，他们系统地计划和研究新情况。他们乐于钻研复杂的理论性问题，力求精通任何他们认为有趣的事物。他们对于行为的未来结果更感兴趣，而不是事物现存的状况。<br><br>"
					+ "ENTJ型的人是热心而真诚的天生的领导者，他们往往能够控制他们所处的任何环境。因为他们具有预见能力，并且向别人传播他们的观点，所以他们是出色的群众组织者。他们往往按照一套相当严格的规律生活，并且希望别人也是如此。因此他们往往具有挑战性，同样艰难地推动自我和他人前进。";
			occur = "您适合的领域有：工商业、政界、金融和投资领域、管理咨询、培训、专业性领域。";
			break;
		case "ENFP":
			result.add("充满热忱、活力充沛、聪明的、富想象力的，视生命充满机会但期能得自他人肯定与支持。");
			result.add("几乎能达成所有有兴趣的事。");
			result.add("对难题很快就有对策并能对有困难的人施予援手。");
			result.add("依赖能改善的能力而无须预作规划准备。");
			result.add("为达目的常能找出强制自己为之的理由。");
			result.add("即兴执行者。");
			summa = "冒险特质的记者型";
			descr = "热情洋溢、富有想象力。认为生活是充满很多可能性。能很快地将事情和信息联系起来，然后很自信地根据自己的判断解决问题。很需要别人的肯定，又乐于欣赏和支持别人。灵活、自然不做作，有很强的即兴发挥的能力，言语流畅。<br><br>"
					+ "ENFP型的人充满热情和新思想。他们乐观、自然、富有创造性和自信，具有独创性的思想和对可能性的强烈感受。对于ENFP型的人来说，生活是激动人生的戏剧。<br><br>"
					+ "ENFP型的人对可能性很感兴趣，所以他们了解所有事物中的深远意义。他们具有洞察力，是热情的观察者，注意常规以外的任何事物。ENFP型的人好奇，喜欢理解而不是判断。ENFP型的人具有想象力、适应性和可变性，他们视灵感高于一切，常常是足智多谋的发明人。ENFP型的人不墨守成规，善于发现做事情的新方法，为思想或行为开辟新道路，并保持它们的开放。在完成新颖想法的过程中，ENFP型的人依赖冲动的能量。他们有大量的主动性，认为问题令人兴奋。他们也从周围其他人中得到能量，把自己的才能与别人的力量成功地结合在一起。<br><br>"
					+ "ENFP型的人具有魅力、充满生机。他们待人热情、彬彬有礼、富有同情心，愿意帮助别人解决问题。他们具有出色的洞察力和观察力，常常关心他人的发展。 ENFP型的人避免冲突，喜欢和睦。他们把更多的精力倾注于维持个人关系而不是客观事物，喜欢保持一种广泛的关系。";
			occur = "您适合的领域有：未有明显的限定领域。";
			break;
		case "INFP":
			result.add("安静观察者，具理想性与对其价值观及重要之人具忠诚心。");
			result.add("希外在生活形态与内在价值观相吻合。");
			result.add("具好奇心且很快能看出机会所在。常担负开发创意的触媒者。");
			result.add("除非价值观受侵犯，行事会具弹性、适应力高且承受力强。");
			result.add("具想了解及发展他人潜能的企图。想作太多且作事全神贯注。");
			result.add("对所处境遇及拥有不太在意。");
			result.add("具适应力、有弹性除非价值观受到威胁。");
			summa = "知性特质的哲学家型";
			descr = "理想主义者，忠于自己的价值观及自己所重视的人。外在的生活与内在的价值观配合，有好奇心，很快看到事情的可能与否，能够加速对理念的实践。试图了解别人、协助别人发展潜能。适应力强，有弹性;如果和他们的价值观没有抵触，往往能包容他人。<br><br>"
					+ "INFP把内在的和谐视为高于其他一切。他们敏感、理想化、忠诚，对于个人价值具有一种强烈的荣誉感。他们个人信仰坚定，有为自认为有价值的事业献身的精神。<br><br>"
					+ "INFP型的人对于已知事物之外的可能性很感兴趣，精力集中于他们的梦想和想象。他们思维开阔、有好奇心和洞察力，常常具有出色的长远眼光。在日常事务中，他们通常灵活多变、具有忍耐力和适应性，但是他们非常坚定地对待内心的忠诚，为自己设定了事实上几乎是不可能的标准。INFP型的人具有许多使他们忙碌的理想和忠诚。他们十分坚定地完成自己所选择的事情，他们往往承担得太多，但不管怎样总要完成每件事。虽然对外部世界他们显得冷淡缄默，但INFP型的人很关心内在。他们富有同情心、理解力，对于别人的情感很敏感。除了他们的价值观受到威胁外，他们总是避免冲突，没有兴趣强迫或支配别人。<br><br>"
					+ "INFP型的人常常喜欢通过书写而不是口头来表达自己的感情。当INFP型的人劝说别人相信他们的想法的重要性时，可能是最有说服力的。 INFP很少显露强烈的感情，常常显得沉默而冷静。然而，一旦他们与你认识了，就会变得热情友好，但往往会避免浮浅的交往。他们珍视那些花费时间去思考目标与价值的人。";
			occur = "您适合的领域有：创作性、艺术类、教育、研究、咨询类等。";
			break;
		case "INTP":
			result.add("安静、自持、弹性及具适应力。");
			result.add("特别喜爱追求理论与科学事理。");
			result.add("习于以逻辑及分析来解决问题—问题解决者。");
			result.add("最有兴趣于创意事务及特定工作，对聚会与闲聊无太大兴趣。");
			result.add("追求可发挥个人强烈兴趣的生涯。");
			result.add("追求发展对有兴趣事务之逻辑解释。");
			summa = "一板一眼的学者型";
			descr = "对任何感兴趣的事物，都要探索一个合理的解释。喜欢理论和抽象的事情，喜欢理念思维多于社交活动。沉静，满足，有弹性，适应力强。在他们感兴趣的范畴内，有非凡的能力去专注而深入地解决问题。有怀疑精神，有时喜欢批判，常常善于分析。<br><br>"
					+ "INTP型的人是解决理性问题者。他们很有才智和条理性，以及创造才华的突出表现。INTP型的人外表平静、缄默、超然，内心却专心致志于分析问题。他们苛求精细、惯于怀疑。他们努力寻找和利用原则以理解许多想法。他们喜欢有条理和有目的的交谈，而且可能会仅仅为了高兴，争论一些无益而琐细的问题。只有有条理的推理才会使他们信服。通常INTP型的人是足智多谋、有独立见解的思考者。他们重视才智，对于个人能力有强烈的欲望，有能力也很感兴趣向他人挑战。<br><br>"
					+ "INTP型的人最主要的兴趣在于理解明显的事物之外的可能性。他们乐于为了改进事物的目前状况或解决难题而进行思考。他们的思考方式极端复杂，而且他们能很好地组织概念和想法。偶尔，他们的想法非常复杂，以致于很难向别人表达和被他人理解。INTP型的人十分独立，喜欢冒险和富有想象力的活动。他们灵活易变、思维开阔，更感兴趣的是发现有创见而且合理的解决方法，而不是仅仅看到成为事实的解决方式。";
			occur = "您适合的领域有：计算机技术、理论研究、学术领域、专业领域、创造性领域等。";
			break;
		case "INTJ":
			result.add("具强大动力与本意来达成目的与创意—固执顽固者。");
			result.add("有宏大的愿景且能快速在众多外界事件中找出有意义的模范。");
			result.add("对所承负职务，具良好能力于策划工作并完成。");
			result.add("具怀疑心、挑剔性、独立性、果决，对专业水准及绩效要求高。");
			summa = "实事求是的专家型";
			descr = "在实现自己的想法和达成自己的目标时有创新的想法和非凡的动力。能很快洞察到外界事物间的规律并形成长期的远景计划。一旦决定做一件事就会开始规划并直到完成为止。多疑、独立，对于自己和他人能力和表现的要求都非常高。<br><br>"
					+ "INTJ型的人是完美主义者。他们强烈地要求个人自由和能力，同时在他们独创的思想中，不可动摇的信仰促使他们达到目标。INTJ型的人思维严谨、有逻辑性、足智多谋，他们能够看到新计划实行后的结果。他们对自己和别人都很苛求，往往几乎同样强硬地逼迫别人和自己。他们并不十分受冷漠与批评的干扰，作为所有性格类型中最独立的，INTJ型的人更喜欢以自己的方式行事。面对相反意见，他们通常持怀疑态度，十分坚定和坚决。权威本身不能强制地们，只有他们认为这些规则对自己的更重要的目标有用时，才会去遵守。<br><br>"
					+ "INTJ型的人是天生的谋略家，具有独特的思想、伟大的远见和梦想。他们天生精于理论，对于复杂而综合的概念运转灵活。他们是优秀的战略思想家，通常能清楚地看到任何局势的利处和缺陷。对于感兴趣的问题，他们是出色的、具有远见和见解的组织者。如果是他们自己形成的看法和计划，他们会投入不可思议的注意力、能量和积极性。领先到达或超过自己的高标准的决心和坚忍不拔，使他们获得许多成就。";
			occur = "您适合的领域有：科研、科技应用、技术咨询、管理咨询、金融、投资领域、创造性行业。";
			break;
		}
	}

	public List<String> getResult() {
		return result;
	}

	public void setResult(List<String> result) {
		this.result = result;
	}

	public String getOccur() {
		return occur;
	}

	public void setOccur(String occur) {
		this.occur = occur;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}

	public String getSumma() {
		return summa;
	}

	public void setSumma(String summa) {
		this.summa = summa;
	}

}