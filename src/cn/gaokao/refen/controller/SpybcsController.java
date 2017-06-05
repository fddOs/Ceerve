package cn.gaokao.refen.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.gaokao.refen.Entity.Category;
import cn.gaokao.refen.Entity.PreSchoolScore;
import cn.gaokao.refen.Entity.Province;
import cn.gaokao.refen.Entity.SPYBCSInfo;
import cn.gaokao.refen.Entity.School;
import cn.gaokao.refen.Entity.SubTable;
import cn.gaokao.refen.service.CategorysService;
import cn.gaokao.refen.service.LocationsService;
import cn.gaokao.refen.service.PreSchoolScoreService;
import cn.gaokao.refen.service.SchRankService;
import cn.gaokao.refen.service.SpybcsService;
import cn.gaokao.refen.service.SubTableService;

/**
 * @author 作者 : 方典典
 * @version 创建时间：2017年3月27日 下午5:03:30 类说明
 */
@Controller
public class SpybcsController {
	@Autowired
	private SpybcsService spybcsService;
	@Autowired
	private SchRankService schRankService;
	@Autowired
	private SubTableService subTableService;
	@Autowired
	private LocationsService locationsService;
	@Autowired
	private CategorysService categorysService;
	@Autowired
	private PreSchoolScoreService preSchoolScoreService;

	@RequestMapping(value = "/hisScore/{school}/{province}/{cdc}/{bath}", method = RequestMethod.GET)
	public String getHisScore(Model model, @PathVariable String school, @PathVariable String province,
			@PathVariable String cdc, @PathVariable String bath) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("school", school);
		map.put("province", province);
		map.put("cdc", cdc);
		map.put("bath", bath);
		List<SPYBCSInfo> list = spybcsService.getHisScore(map);
		School info = schRankService.getSchoolInfo(school);
		JSONObject json = new JSONObject();
		json.put("Result", list);
		json.put("Info", info);
		model.addAttribute("result", json);
		return "hisScore";
	}

	@RequestMapping(value = "/scoSecSch/{school}/{province}/{cdc}/{bath}", method = RequestMethod.GET)
	public String getSecSch(Model model, @PathVariable String school, @PathVariable String province,
			@PathVariable String cdc, @PathVariable String bath) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("school", school);
		map.put("province", province);
		map.put("cdc", cdc);
		map.put("bath", bath);
		List<SPYBCSInfo> list = spybcsService.getHisScore(map);
		School info = schRankService.getSchoolInfo(school);
		JSONObject json = new JSONObject();
		json.put("Result", list);
		json.put("Info", info);
		model.addAttribute("result", json);
		return "scoSecSch";
	}

	@RequestMapping(value = "/selectSch/{stuProvince}/{cdc}/{score}/{rankScore}/{schProvince}/{cate}/{pageNum}", method = RequestMethod.GET)
	public String getSelectSch(Model model, @PathVariable String stuProvince, @PathVariable String schProvince,
			@PathVariable String cdc, @PathVariable String cate, @PathVariable int score, @PathVariable int rankScore,
			@PathVariable int pageNum) {
		JSONObject json = new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("schProvince", schProvince);
		map.put("stuProvince", stuProvince);
		map.put("cdc", cdc);
		map.put("cate", cate + "类");
		// map.put("score", score);
		map.put("rankScore", rankScore);
		int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
		if (month < 7) {
			map.put("year", Calendar.getInstance().get(Calendar.YEAR) - 1);
		}
		else {
			map.put("year", Calendar.getInstance().get(Calendar.YEAR));
		}
		if ("辽宁".equals(stuProvince)) {
			map.put("score", score);
			map.put("rank", rankScore);
			PageHelper.startPage(pageNum, 10);
			List<PreSchoolScore> list = preSchoolScoreService.getPreSchool(map);
			PageInfo<PreSchoolScore> listInfo = new PageInfo<>(list);
			json.put("Result", listInfo);
		}
		else {
			if (rankScore != -1) {
				SubTable subTable = subTableService.getSubTable(map);
				if (subTable != null) {
					if (score != -1) {
						map.put("score", (int) Math.floor((score + subTable.getMinScore()) / 2));
					}
					else {
						map.put("score", subTable.getMinScore());
					}
				}
				else if (score != -1) {
					map.put("score", score);
				}
				else {
					json.put("Result", null);
					List<Province> locations = getLocationsService().getLocations();
					List<Category> categorys = categorysService.getCategorys();
					json.put("locations", locations);
					json.put("categorys", categorys);
					model.addAttribute("result", json);
					return "selectSch";
				}
			}
			else {
				map.put("score", score);
			}
			PageHelper.startPage(pageNum, 10);
			List<SPYBCSInfo> list = spybcsService.getSelectSchool(map);
			PageInfo<SPYBCSInfo> listInfo = new PageInfo<>(list);
			json.put("Result", listInfo);
		}
		List<Province> locations = getLocationsService().getLocations();
		List<Category> categorys = categorysService.getCategorys();
		json.put("locations", locations);
		json.put("categorys", categorys);
		model.addAttribute("result", json);
		return "selectSch";
	}

	public SpybcsService getSpybcsService() {
		return spybcsService;
	}

	public void setSpybcsService(SpybcsService spybcsService) {
		this.spybcsService = spybcsService;
	}

	public SchRankService getSchRankService() {
		return schRankService;
	}

	public void setSchRankService(SchRankService schRankService) {
		this.schRankService = schRankService;
	}

	public LocationsService getLocationsService() {
		return locationsService;
	}

	public void setLocationsService(LocationsService locationsService) {
		this.locationsService = locationsService;
	}

	public SubTableService getSubTableService() {
		return subTableService;
	}

	public void setSubTableService(SubTableService subTableService) {
		this.subTableService = subTableService;
	}

	public PreSchoolScoreService getPreSchoolScoreService() {
		return preSchoolScoreService;
	}

	public void setPreSchoolScoreService(PreSchoolScoreService preSchoolScoreService) {
		this.preSchoolScoreService = preSchoolScoreService;
	}

	public CategorysService getCategorysService() {
		return categorysService;
	}

	public void setCategorysService(CategorysService categorysService) {
		this.categorysService = categorysService;
	}

}
