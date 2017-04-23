/*package cn.gaokao.refen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSONObject;

import cn.gaokao.refen.Entity.Occur;
import cn.gaokao.refen.service.OccuTestService;

@Controller
public class HlandeTestController {
	@Autowired
	@Qualifier("hlandeService")
	private OccuTestService testService;
	
	@RequestMapping(value = "/hlandeResult", method = RequestMethod.POST,produces = "text/html;charset=UTF-8")
	public String getTestResult(@RequestParam String param, Model model) {
		Occur occur = testService.getTestReslt(param);
		JSONObject json = new JSONObject();
		json.put("result", occur);
		model.addAttribute("result", json);
		return "MbtiResult";
	}

	public OccuTestService getTestService() {
		return testService;
	}

	public void setTestService(OccuTestService testService) {
		this.testService = testService;
	}
}
*/