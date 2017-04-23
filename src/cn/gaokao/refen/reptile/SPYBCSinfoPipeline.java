package cn.gaokao.refen.reptile;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.gaokao.refen.Entity.SPYBCSInfo;
import cn.gaokao.refen.mapper.SpybcsMapper;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

public class SPYBCSinfoPipeline implements Pipeline {
	private List<SPYBCSInfo> list;
	private ApplicationContext ctx = new ClassPathXmlApplicationContext("config/spring/applicationContext-dao.xml");

	@Override
	public void process(ResultItems resultItems, Task task) {
		list = resultItems.get("list");
		//System.out.println(list.size());
		// if(resultItems.get("flag")!=null){
		SpybcsMapper mapper = (SpybcsMapper) ctx.getBean("spybcsinfoMapper");
		mapper.addSpybcsinfo(list);
		// }

	}
}
