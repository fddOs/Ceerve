package cn.gaokao.refen.reptile;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.gaokao.refen.Entity.SPYBCSInfo;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.JsonPathSelector;

public class SPYBCSinfoRetile implements PageProcessor {

	// 抓取网站的相关配置，包括编码、抓取间隔0.1s、重试3次数等
	private Site site = Site.me().setRetryTimes(1).setSleepTime(100);
	private List<SPYBCSInfo> list = new ArrayList<SPYBCSInfo>();

	@Override
	// process是定制爬虫逻辑的核心接口，在这里编写抽取逻辑
	public void process(Page page) {
		String a = page.getRawText();
		String province = "";
		int year = 0;
		String school = "";
		String bath = "";
		int provincescore = 0;
		int fenscha = 0;
		int minscore = 0;
		String type = "";
		int avescore = 0;
		int higscore = 0;
		int admisnum = 0;
		int num = Integer.parseInt(new JsonPathSelector("$.totalRecord.num").select(a));
		int end = num % 50;
		if (end != 0) {
			end = num / 50 + 1;
		}
		else {
			end = num / 50;
		}
		// System.out.println(end);
		list.clear();
		for (int i = 2; i <= end; i++) {
			page.addTargetRequest(
					"http://data.api.gkcx.eol.cn/soudaxue/queryProvinceScore.html?messtype=json&url_sign=queryProvinceScore&page="
							+ i + "&size=50");
		}
		page.addTargetRequest(
				"http://data.api.gkcx.eol.cn/soudaxue/queryProvinceScore.html?messtype=json&url_sign=queryProvinceScore&page=4251&size=50");
		page.addTargetRequest(
				"http://data.api.gkcx.eol.cn/soudaxue/queryProvinceScore.html?messtype=json&url_sign=queryProvinceScore&page=7081&size=50");
		for (int m = 0; m < 50; m++) {
			try {
				school = new JsonPathSelector("$.school[" + m + "].schoolname").select(a);
				province = new JsonPathSelector("$.school[" + m + "].localprovince").select(a);
				if (!new JsonPathSelector("$.school[" + m + "].var_score").select(a).matches(".*\\d+.*")) {
					avescore = -1;
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
					avescore = Integer.parseInt(s);
				}
				if (!new JsonPathSelector("$.school[" + m + "].max").select(a).matches(".*\\d+.*")) {
					higscore = -1;
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
					higscore = Integer.parseInt(s);
				}
				if (!new JsonPathSelector("$.school[" + m + "].min").select(a).matches(".*\\d+.*")) {
					minscore = -1;
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
					minscore = Integer.parseInt(s);
				}
				if (!new JsonPathSelector("$.school[" + m + "].num").select(a).matches(".*\\d+.*")) {
					admisnum = -1;
				}
				else {
					String s = new JsonPathSelector("$.school[" + m + "].num").select(a).trim();
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
					admisnum = Integer.parseInt(s);
				}
				if (!new JsonPathSelector("$.school[" + m + "].fencha").select(a).matches(".*\\d+.*")) {
					fenscha = -1;
				}
				else {
					String s = new JsonPathSelector("$.school[" + m + "].fencha").select(a).trim();
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
					fenscha = Integer.parseInt(s);
				}
				if (!new JsonPathSelector("$.school[" + m + "].provincescore").select(a).matches(".*\\d+.*")) {
					provincescore = -1;
				}
				else {
					String s = new JsonPathSelector("$.school[" + m + "].provincescore").select(a).trim();
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
					provincescore = Integer.parseInt(s);
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
				type = new JsonPathSelector("$.school[" + m + "].studenttype").select(a);
				bath = new JsonPathSelector("$.school[" + m + "].batch").select(a);
				list.add(new SPYBCSInfo(school, province, provincescore, fenscha, minscore, bath, year, type, higscore,
						avescore, admisnum));
			}
			catch (Exception e) {
				e.printStackTrace();
				// page.putField("flag", "ok");
				// System.out.println(e.);
			}
		}
		page.putField("list", list);
	}

	@Override
	public Site getSite() {
		return site;
	}

	public static void main(String[] args) {
		Spider.create(new SPYBCSinfoRetile())
				.addUrl("http://data.api.gkcx.eol.cn/soudaxue/queryProvinceScore.html?messtype=json&url_sign=queryProvinceScore&page=1&size=50")
				.addPipeline(new SPYBCSinfoPipeline()).thread(1).run();
	}
}