package cn.gaokao.refen.reptile;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.gaokao.refen.Entity.ProScore;
import cn.gaokao.refen.mapper.ProScoreMapper;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

/**
 * @author 作者:方典典 时间:2017年3月27日:下午8:49:39 说明:
 */
public class ProScorePipeline implements Pipeline {
	private List<ProScore> list;
	private ApplicationContext ctx = new ClassPathXmlApplicationContext("config/spring/applicationContext-dao.xml");

	@Override
	public void process(ResultItems resultItems, Task task) {
		list = resultItems.get("list");
		ProScoreMapper mapper = (ProScoreMapper) ctx.getBean("proScoreMapper");
		mapper.addProScore(list);
	}
}
