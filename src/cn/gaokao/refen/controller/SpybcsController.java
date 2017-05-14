package cn.gaokao.refen.controller;

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

import cn.gaokao.refen.Entity.Province;
import cn.gaokao.refen.Entity.SPYBCSInfo;
import cn.gaokao.refen.Entity.School;
import cn.gaokao.refen.service.LocationsService;
import cn.gaokao.refen.service.SchRankService;
import cn.gaokao.refen.service.SpybcsService;

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
	private LocationsService locationsService;

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

	@RequestMapping(value = "/selectSch/{stuProvince}/{cdc}/{score}/{schProvince}/{bath}/{pageNum}", method = RequestMethod.GET)
	public String getSelectSch(Model model, @PathVariable String stuProvince, @PathVariable String schProvince,
			@PathVariable String cdc, @PathVariable String bath, @PathVariable int score, @PathVariable int pageNum) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("schProvince", schProvince);
		map.put("stuProvince", stuProvince);
		map.put("cdc", cdc);
		map.put("bath", bath);
		map.put("score", score);
		PageHelper.startPage(pageNum, 10);
		List<SPYBCSInfo> list = spybcsService.getSelectSchool(map);
		PageInfo<SPYBCSInfo> listInfo = new PageInfo<>(list);
		List<Province> locations = getLocationsService().getLocations();
		JSONObject json = new JSONObject();
		json.put("Result", listInfo);
		json.put("locations", locations);
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

}
