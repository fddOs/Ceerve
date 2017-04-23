package cn.gaokao.refen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import cn.gaokao.refen.service.AttributesService;

@Controller
public class AttributesController {
	@Autowired
	private AttributesService attributesService;

	@ResponseBody
	@RequestMapping(value = "/getAttributes", method = RequestMethod.GET)
	public String Category() {
		JSONObject json = new JSONObject();
		json.put("Attributes", attributesService.getAttributes());
		return json.toString();
	}

	public AttributesService getAttributesService() {
		return attributesService;
	}

	public void setAttributesService(AttributesService attributesService) {
		this.attributesService = attributesService;
	}
}
