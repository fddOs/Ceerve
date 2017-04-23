package cn.gaokao.refen.reptile;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.gaokao.refen.Entity.P_Y_B_C_info;
import cn.gaokao.refen.mapper.P_Y_B_C_infoMapper;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

public class P_Y_B_C_infoPipeline implements Pipeline {
	private List<P_Y_B_C_info> list;
	private ApplicationContext ctx = new ClassPathXmlApplicationContext("config/spring/applicationContext-dao.xml");

	@Override
	public void process(ResultItems resultItems, Task task) {
		list = resultItems.get("list");
		System.out.println(list.size());
		P_Y_B_C_infoMapper mapper = (P_Y_B_C_infoMapper) ctx.getBean("p_Y_B_C_infoMapper");
		mapper.addP_Y_B_C_info(list);
	}
}
