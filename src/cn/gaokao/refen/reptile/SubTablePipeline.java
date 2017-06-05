package cn.gaokao.refen.reptile;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.gaokao.refen.Entity.SubTable;
import cn.gaokao.refen.mapper.SubTableMapper;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

/**
 * @author 作者:方典典 时间:2017年3月27日:下午8:49:39 说明:
 */
public class SubTablePipeline implements Pipeline {
	private List<SubTable> list;
	private ApplicationContext ctx = new ClassPathXmlApplicationContext("config/spring/applicationContext-dao.xml");

	@Override
	public void process(ResultItems resultItems, Task task) {
		list = resultItems.get("list");
		SubTableMapper mapper = (SubTableMapper) ctx.getBean("subTableMapper");
		for(SubTable subTable : list){
			mapper.setSubTable(subTable);
		}
	}
}
