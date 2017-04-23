package cn.gaokao.refen.reptile;

import java.util.ArrayList;
import java.util.List;

import cn.gaokao.refen.Entity.P_Y_B_C_info;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.JsonPathSelector;

public class P_Y_B_C_infoRetile implements PageProcessor {

	// 抓取网站的相关配置，包括编码、抓取间隔0.1s、重试3次数等
	private Site site = Site.me().setRetryTimes(1).setSleepTime(100);
	private List<P_Y_B_C_info> list = new ArrayList<P_Y_B_C_info>();

	@Override
	// process是定制爬虫逻辑的核心接口，在这里编写抽取逻辑
	public void process(Page page) {
		String a = page.getRawText();
		String province="";
		String year="";
		String type="";
		String bath="";
		String score="";
		int num = Integer.parseInt(new JsonPathSelector("$.totalRecord.num").select(a));
		int end = num%10;
		if(end!=0){
			end = num/10+end;
		}else{
			end = num/10;
		}
		System.out.println(end);
		list.clear();
		for(int i=2;i<=end;i++){
			page.addTargetRequest("http://data.api.gkcx.eol.cn/soudaxue/queryProvince.html?messtype=json&url_sign=queryprovince&page="+i+"&size=10");
		}
		for(int m=0;m<10;m++){
			try {
				province = new JsonPathSelector("$.school["+m+"].province").select(a);
				year = new JsonPathSelector("$.school["+m+"].year").select(a);
				type = new JsonPathSelector("$.school["+m+"].type").select(a);
				bath = new JsonPathSelector("$.school["+m+"].bath").select(a);
				score = new JsonPathSelector("$.school["+m+"].score").select(a);
				list.add(new P_Y_B_C_info(province, year, type, bath,score));
			}
			catch (Exception e) {
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
		Spider.create(new P_Y_B_C_infoRetile())
				.addUrl("http://data.api.gkcx.eol.cn/soudaxue/queryProvince.html?messtype=json&url_sign=queryprovince&page=1&size=10").addPipeline(new P_Y_B_C_infoPipeline()).thread(1).run();
	}
}