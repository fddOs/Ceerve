package cn.gaokao.refen.reptile;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.gaokao.refen.Entity.ProScore;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.JsonPathSelector;

/**
 * @author 作者:方典典 时间:2017年3月27日:下午8:31:05 说明:
 */
public class ProScoreRetile implements PageProcessor {

	// 抓取网站的相关配置，包括编码、抓取间隔0.1s、重试3次数等
	private Site site = Site.me().setSleepTime(1000).setTimeOut(30000)
			.setCycleRetryTimes(3).setUserAgent("Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36");
	// private List<ProScore> list = new ArrayList<ProScore>();

	@Override
	// process是定制爬虫逻辑的核心接口，在这里编写抽取逻辑
	public void process(Page page) {
		String a = page.getRawText();
		String school = "";
		String proName = "";
		String province = "";
		String cdc = "";
		int year = 0;
		String bath = "";
		int avgScore = 0;
		int maxScore = 0;
		int minScore = 0;
		int num = Integer.parseInt(new JsonPathSelector("$.totalRecord.num").select(a));
		int end = num % 50;
		if (end != 0) {
			end = num / 50 + end;
		}
		else {
			end = num / 50;
		}
		List<ProScore> list = new ArrayList<ProScore>();
		for (int i = 45002; i <= 50000; i++) {
			page.addTargetRequest(
					"http://data.api.gkcx.eol.cn/soudaxue/querySpecialtyScore.html?messtype=json&url_sign=querySpecialtyScore&page="
							+ i + "&size=50");
		}
		
		for (int m = 0; m < 50; m++) {
			try {
				school = new JsonPathSelector("$.school[" + m + "].schoolname").select(a);
				province = new JsonPathSelector("$.school[" + m + "].localprovince").select(a);
				if (!new JsonPathSelector("$.school[" + m + "].var_score").select(a).matches(".*\\d+.*")) {
					avgScore = -1;
				}
				else {
					String s = new JsonPathSelector("$.school[" + m + "].var_score").select(a).trim();
					String regEx = "[^0-9]";
					Pattern p = Pattern.compile(regEx);
					Matcher ma = p.matcher(s);
					s = ma.replaceAll("").trim();
					if (s.indexOf(".") > 0) {
						regEx = "0+?$";
						p = Pattern.compile(regEx);
						ma = p.matcher(s);
						s = ma.replaceAll("").trim();
						regEx = "[.]$";
						p = Pattern.compile(regEx);
						ma = p.matcher(s);
					}
					s = ma.replaceAll("").trim();
					/*
					 * if(s.indexOf(".") > 0){ s = s.replaceAll("0+?$",
					 * "");//去掉多余的0 s = s.replaceAll("[.]$", "");//如最后一位是.则去掉 }
					 * s=s.trim();
					 */
					avgScore = Integer.parseInt(s);
				}
				if (!new JsonPathSelector("$.school[" + m + "].max").select(a).matches(".*\\d+.*")) {
					maxScore = -1;
				}
				else {
					String s = new JsonPathSelector("$.school[" + m + "].max").select(a).trim();
					String regEx = "[^0-9]";
					Pattern p = Pattern.compile(regEx);
					Matcher ma = p.matcher(s);
					s = ma.replaceAll("").trim();
					if (s.indexOf(".") > 0) {
						regEx = "0+?$";
						p = Pattern.compile(regEx);
						ma = p.matcher(s);
						s = ma.replaceAll("").trim();
						regEx = "[.]$";
						p = Pattern.compile(regEx);
						ma = p.matcher(s);
					}
					s = ma.replaceAll("").trim();
					maxScore = Integer.parseInt(s);
				}
				if (!new JsonPathSelector("$.school[" + m + "].min").select(a).matches(".*\\d+.*")) {
					minScore = -1;
				}
				else {
					String s = new JsonPathSelector("$.school[" + m + "].min").select(a).trim();
					String regEx = "[^0-9]";
					Pattern p = Pattern.compile(regEx);
					Matcher ma = p.matcher(s);
					s = ma.replaceAll("").trim();
					if (s.indexOf(".") > 0) {
						regEx = "0+?$";
						p = Pattern.compile(regEx);
						ma = p.matcher(s);
						s = ma.replaceAll("").trim();
						regEx = "[.]$";
						p = Pattern.compile(regEx);
						ma = p.matcher(s);
					}
					s = ma.replaceAll("").trim();
					minScore = Integer.parseInt(s);
				}
				if (!new JsonPathSelector("$.school[" + m + "].year").select(a).matches(".*\\d+.*")) {
					year = -1;
				}
				else {
					String s = new JsonPathSelector("$.school[" + m + "].year").select(a).trim();
					String regEx = "[^0-9]";
					Pattern p = Pattern.compile(regEx);
					Matcher ma = p.matcher(s);
					s = ma.replaceAll("").trim();
					if (s.indexOf(".") > 0) {
						regEx = "0+?$";
						p = Pattern.compile(regEx);
						ma = p.matcher(s);
						s = ma.replaceAll("").trim();
						regEx = "[.]$";
						p = Pattern.compile(regEx);
						ma = p.matcher(s);
					}
					s = ma.replaceAll("").trim();
					year = Integer.parseInt(s);
				}
				cdc = new JsonPathSelector("$.school[" + m + "].studenttype").select(a);
				bath = new JsonPathSelector("$.school[" + m + "].batch").select(a);
				proName = new JsonPathSelector("$.school[" + m + "].specialtyname").select(a);
				list.add(new ProScore(school, proName, province, cdc, year, bath, avgScore, maxScore, minScore));
			}
			catch (Exception e) {
				System.out.println("数据一爬完");
			}
		}
		page.putField("list", list);
	}

	@Override
	public Site getSite() {
		site.addCookie("UM_distinctid", "15aa2b22fc2334-03c0b955f2d3d3-6a191178-100200-15aa2b22fc35bf");
		site.addCookie("gkcx_guess_info_pc", "||");
		return site;
	}

	public static void main(String[] args) {
		Spider.create(new ProScoreRetile())
				.addUrl("http://data.api.gkcx.eol.cn/soudaxue/querySpecialtyScore.html?messtype=json&url_sign=querySpecialtyScore&page=45001&size=50")
				.addPipeline(new ProScorePipeline()).thread(2).run();
	}
}