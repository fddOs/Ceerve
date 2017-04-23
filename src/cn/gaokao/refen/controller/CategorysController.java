package cn.gaokao.refen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import cn.gaokao.refen.service.CategorysService;

@Controller
public class CategorysController {
	@Autowired
	private CategorysService categorysService;

	@ResponseBody
	@RequestMapping(value = "/getCategorys", method = RequestMethod.GET)
	public String Category() {
		JSONObject json = new JSONObject();
		json.put("Categorys", categorysService.getCategorys());
		return json.toString();
	}

	public CategorysService getCategorysService() {
		return categorysService;
	}

	public void setCategorysService(CategorysService categorysService) {
		this.categorysService = categorysService;
	}
}
