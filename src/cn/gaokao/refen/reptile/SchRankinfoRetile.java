package cn.gaokao.refen.reptile;

import java.util.ArrayList;
import java.util.List;

import cn.gaokao.refen.Entity.School;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.JsonPathSelector;

public class SchRankinfoRetile implements PageProcessor {

	// 抓取网站的相关配置，包括编码、抓取间隔0.1s、重试3次数等
	private Site site = Site.me().setRetryTimes(1).setSleepTime(10);
	private List<School> list = new ArrayList<School>();

	@Override
	// process是定制爬虫逻辑的核心接口，在这里编写抽取逻辑
	public void process(Page page) {
		String a = page.getRawText();
		String province="";
		String schoolname="";
		String schoolproperty="";
		int clicks=0;
		String f985="";
		String f211="";
		String membership="";
		int num = Integer.parseInt(new JsonPathSelector("$.totalRecord.num").select(a));
		int end = num%10;
		if(end!=0){
			end = num/10+1;
		}else{
			end = num/10;
		}
		//System.out.println(end);
		list.clear();
		for(int i=2;i<=end;i++){
			page.addTargetRequest("http://data.api.gkcx.eol.cn/soudaxue/queryschool.html?messtype=json&page="+i+"&size=10");
		}
		for(int m=0;m<10;m++){
			try {
				schoolname = new JsonPathSelector("$.school["+m+"].schoolname").select(a);
				province = new JsonPathSelector("$.school["+m+"].province").select(a);
				schoolproperty = new JsonPathSelector("$.school["+m+"].schoolproperty").select(a);
				clicks = Integer.parseInt(new JsonPathSelector("$.school["+m+"].clicks").select(a));
				f985 = new JsonPathSelector("$.school["+m+"].f985").select(a);
				f211 = new JsonPathSelector("$.school["+m+"].f211").select(a);
				membership = new JsonPathSelector("$.school["+m+"].membership").select(a);
				list.add(new School(schoolname, clicks, province, schoolproperty, f985, f211, membership));
			}
			catch (Exception e) {
				//page.putField("flag", "ok");
				System.out.println("数据一爬完");
			}
		}
		page.putField("list", list);
	}

	@Override
	public Site getSite() {
		return site;
	}

	public static void main(String[] args) {
		Spider.create(new SchRankinfoRetile())
				.addUrl("http://data.api.gkcx.eol.cn/soudaxue/queryschool.html?messtype=json&page=1&size=10").addPipeline(new SchRankinfoPipeline()).thread(1).run();
	}
}