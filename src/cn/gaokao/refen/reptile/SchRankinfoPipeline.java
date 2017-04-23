package cn.gaokao.refen.reptile;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.gaokao.refen.Entity.School;
import cn.gaokao.refen.mapper.SchRankMapper;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

public class SchRankinfoPipeline implements Pipeline {
	private List<School> list;
	private ApplicationContext ctx = new ClassPathXmlApplicationContext("config/spring/applicationContext-dao.xml");

	@Override
	public void process(ResultItems resultItems, Task task) {
		list = resultItems.get("list");
		//System.out.println(list.size());
		// if(resultItems.get("flag")!=null){
		SchRankMapper mapper = (SchRankMapper) ctx.getBean("schRankMapper");
		mapper.addSchRank(list);
		// }

	}
}
