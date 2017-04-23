package cn.gaokao.refen.reptile;

import java.util.ArrayList;
import java.util.List;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;

public class ProfessionRetile implements PageProcessor{
	private Site site = Site.me().setRetryTimes(3).setSleepTime(100);
	private List<String> list = new ArrayList<String>();
	private List<String> nameList = new ArrayList<String>();
	private List<String> popList = new ArrayList<String>();
	private int i=0;
	@Override
	public Site getSite() {
		return site;
	}

	@Override
	public void process(Page page) {
		page.addTargetRequests(page.getHtml().xpath("//table[@class='line_24 mar_t_20 font_14']/tbody/tr/td/div/a").links().regex("(http://gkcx\\.eol\\.cn/sphtm/1/sp[0-9]+\\.htm)").all());
		/*String proName="";
		int proPop=0;*/
		//HashMap<Integer,String> map = new HashMap();
		//list.clear();
		String proDetail=page.getHtml().xpath("//div[@class='query_box S_result_kx mar_t_20']/p/html()").toString();
		while(i <1){
			nameList = page.getHtml().xpath("//table[@class='line_24 mar_t_20 font_14']/tbody/tr/td/div/a/text()").all();
			popList = page.getHtml().xpath("//table[@class='line_24 mar_t_20 font_14']/tbody/tr/td/text()").regex("[0-9]{4,}").all();
			System.out.println(nameList.size());
			i++;
		}
		
		proDetail = page.getHtml().xpath("//div[@class='query_box S_result_kx mar_t_20']/html()").toString();
		/*for(int i=0;i<nameList.size()&&i<popList.size();i++){
			//if(proDetail!=null){
				System.out.println(nameList.get(i));
				System.out.println(popList.get(i));
				//System.out.println(proDetail);
				list.add(new Profession(nameList.get(i), Integer.parseInt(popList.get(i))));
			//}
		};*/
		//System.out.println(proDetail);
		
		if(proDetail!=null){
			list.add(proDetail);
			//System.out.println(list.size());
			if(list.size()==100){
				System.out.println("---"+list.get(99));
				page.putField("detaiList", list);
				page.putField("nameList", nameList);
				page.putField("popList", popList);
			}
		}
	}
	
	public static void main(String[] args) {
		Spider.create(new ProfessionRetile())
				.addUrl("http://gkcx.eol.cn/sphtm/1/click_spIntro_top100.htm").addPipeline(new ProfessionPipeline()).thread(1).run();
	}
	
}
