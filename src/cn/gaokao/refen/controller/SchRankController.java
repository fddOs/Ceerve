package cn.gaokao.refen.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.gaokao.refen.Entity.Attribute;
import cn.gaokao.refen.Entity.Category;
import cn.gaokao.refen.Entity.Province;
import cn.gaokao.refen.Entity.School;
import cn.gaokao.refen.service.AttributesService;
import cn.gaokao.refen.service.CategorysService;
import cn.gaokao.refen.service.LocationsService;
import cn.gaokao.refen.service.SchRankService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by juncheng on 2017/3/6.
 */
@Controller
@RequestMapping
public class SchRankController {
	@Autowired
	private SchRankService schRankService;
	@Autowired
	private LocationsService locationsService;
	@Autowired
	private CategorysService categorysService;
	@Autowired
	private AttributesService attributesService;

	/*@RequestMapping(value = "/schRank", method = RequestMethod.GET)
	public String getSchRank(Model model) {
		List<School> infoList = schRankService.getSchRank();
		List<Province> locations = locationsService.getLocations();
		List<Category> categorys = categorysService.getCategorys();
		List<Attribute> attributes = attributesService.getAttributes();
		PageHelper.startPage(page, pageSize);
		JSONObject json = new JSONObject();
		json.put("infoList", infoList);
		json.put("locations", locations);
		json.put("categorys", categorys);
		json.put("attributes", attributes);
		model.addAttribute("result", json);
		return "schRank";
	}*/
	
	@RequestMapping(value="/schRank/{filter}/{page}",method=RequestMethod.GET)
	public String getSchRankFilter(Model model, @PathVariable String filter, @PathVariable int page){
		System.out.println(filter);
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("provi", filter.split("-")[0]);
		map.put("cate", filter.split("-")[1]+"类");
		map.put("attr", filter.split("-")[2]);
		PageHelper.startPage(page, 10);
		List<School> list = schRankService.getSchRankFilter(map);
		PageInfo<School> infoList=new PageInfo<School>(list);
		//System.out.println(infoList.);
		List<Province> locations = locationsService.getLocations();
		List<Category> categorys = categorysService.getCategorys();
		List<Attribute> attributes = attributesService.getAttributes();
		JSONObject json = new JSONObject();
		json.put("infoList", infoList);
		json.put("locations", locations);
		json.put("categorys", categorys);
		json.put("attributes", attributes);
		model.addAttribute("result", json);
		return "schRank";
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
