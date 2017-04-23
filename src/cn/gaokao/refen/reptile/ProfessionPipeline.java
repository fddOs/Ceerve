package cn.gaokao.refen.reptile;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.gaokao.refen.Entity.Profession;
import cn.gaokao.refen.mapper.ProfessionMapper;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

public class ProfessionPipeline implements Pipeline {
	private List<Profession> list = new ArrayList<Profession>();
	private List<String> nameList = new ArrayList<String>();
	private List<String> popList = new ArrayList<String>();
	private ApplicationContext ctx = new ClassPathXmlApplicationContext("config/spring/applicationContext-dao.xml");

	@Override
	public void process(ResultItems resultItems, Task task) {
		//if(resultItems.get("nameList")!=null){
			
		//}
		List<String> detaiList = resultItems.get("detaiList");
		//System.out.println(nameList.size());
		if(detaiList!=null){
			nameList = resultItems.get("nameList");
			popList = resultItems.get("popList");
			System.out.println(nameList.size());
			for(int i=0;i<nameList.size();i++){
				System.out.println(nameList.get(i));
				System.out.println(Integer.parseInt(popList.get(i)));
				System.out.println(detaiList.get(i));
				list.add(new Profession(nameList.get(i), Integer.parseInt(popList.get(i)), detaiList.get(i)));
			}
			System.out.println(list.size());
			ProfessionMapper professionMapper = (ProfessionMapper) ctx.getBean("professionMapper");
			professionMapper.addProfession(list);
		}
		
	}
}
