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

import cn.gaokao.refen.Entity.ProScore;
import cn.gaokao.refen.Entity.Province;
import cn.gaokao.refen.service.LocationsService;
import cn.gaokao.refen.service.ProScoreService;

/**
 * @author 作者:方典典
 * 时间:2017年4月17日:下午8:56:16
 * 说明:
 */
@Controller
public class ProScoreController {
	@Autowired
	private ProScoreService proScoreService;
	@Autowired
	private LocationsService locationsService;

	@RequestMapping(value = "/scoSecPro/{province}/{year}/{cdc}/{score}/{profession}/{schProvince}/{bath}/{pageNum}", method = RequestMethod.GET)
	public String getHisScore(Model model, @PathVariable String profession, @PathVariable String province, @PathVariable int pageNum,
			@PathVariable String cdc, @PathVariable String bath, @PathVariable String schProvince, @PathVariable int year, @PathVariable int score) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("profession", profession);
		map.put("province", province);
		map.put("cdc", cdc);
		map.put("bath", bath);
		map.put("schProvince", schProvince);
		map.put("year", year);
		map.put("score", score);
		List<Province> locations = getLocationsService().getLocations();
		PageHelper.startPage(pageNum, 10);
		List<ProScore> list = proScoreService.getProScore(map);
		PageInfo<ProScore> listInfo = new PageInfo<ProScore>(list);
		JSONObject json = new JSONObject();
		json.put("Result", listInfo);
		json.put("locations", locations);
		model.addAttribute("result", json);
		return "scoSecPro";
	}
	
	public LocationsService getLocationsService() {
		return locationsService;
	}

	public void setLocationsService(LocationsService locationsService) {
		this.locationsService = locationsService;
	}

	public ProScoreService getProScoreService() {
		return proScoreService;
	}

	public void setProScoreService(ProScoreService proScoreService) {
		this.proScoreService = proScoreService;
	}

}
