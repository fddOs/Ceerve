package cn.gaokao.refen.reptile;

import java.util.ArrayList;
import java.util.List;

import cn.gaokao.refen.Entity.SubTable;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;

/**
 * @author 作者:方典典 时间:2017年3月27日:下午8:31:05 说明:
 */
public class SubTableRetile implements PageProcessor {

	// 抓取网站的相关配置，包括编码、抓取间隔0.1s、重试3次数等
	private Site site = Site.me().setSleepTime(1000).setTimeOut(1000)
			.setCycleRetryTimes(3).setUserAgent("Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36");
	// private List<ProScore> list = new ArrayList<ProScore>();

	@Override
	// process是定制爬虫逻辑的核心接口，在这里编写抽取逻辑
	public void process(Page page) {
		List<SubTable> list = new ArrayList<>();
		List<String> scoreList = page.getHtml().xpath("//div[@id='mcontent']/div[1]/table/tbody/tr/td[1]/text()").all();
		List<String> adminList = page.getHtml().xpath("//div[@id='mcontent']/div[1]/table/tbody/tr/td[2]/text()").all();
		List<String> rankList = page.getHtml().xpath("//div[@id='mcontent']/div[1]/table/tbody/tr/td[3]/text()").all();
//		System.out.println(scoreList.size()+"---"+adminList.size()+"----"+rankList.size());
		for(int i=1;i<scoreList.size();i++){
//			String score = scoreList.get(i).trim();
			/*int minScore = 0;
			int higScore = 0;
			if(score.indexOf("→")!=-1){
				minScore = Integer.parseInt(score.substring(0, score.indexOf("→")));
				higScore = Integer.parseInt(score.substring(score.indexOf("→")+1, score.length()));
			}else{
				minScore = higScore = Integer.parseInt(score);
			}*/
			int admin = Integer.parseInt(adminList.get(i));
			int score = Integer.parseInt(scoreList.get(i));
			int rank = Integer.parseInt(rankList.get(i));
			if(i == 2){
				list.add(new SubTable("黑龙江","文科",score,score,admin,rank));
			}else{
				list.add(new SubTable("黑龙江","文科",score,score,admin,rank));
			}
			System.out.println(i+"---"+adminList.get(i)+"----"+rankList.get(i));
			System.out.println(score+"---"+admin+"----"+rank);
		}
		page.putField("list", list);
	}

	@Override
	public Site getSite() {
//		site.addCookie("UM_distinctid", "15aa2b22fc2334-03c0b955f2d3d3-6a191178-100200-15aa2b22fc35bf");
//		site.addCookie("gkcx_guess_info_pc", "||");
		return site;
	}

	public static void main(String[] args) {
		Spider.create(new SubTableRetile())
				.addUrl("http://gaokao.eol.cn/hei_long_jiang/dongtai/201606/t20160624_1420721.shtml")
				.addPipeline(new SubTablePipeline())
				.thread(1).run();
	}
}