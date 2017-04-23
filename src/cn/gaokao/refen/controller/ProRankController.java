package cn.gaokao.refen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONObject;

import cn.gaokao.refen.Entity.Profession;
import cn.gaokao.refen.service.ProfessionService;

@Controller
public class ProRankController {
	@Autowired
	private ProfessionService professionService;

	@RequestMapping(value = "/proRank", method = RequestMethod.GET)
	public String getProRank(Model model) {
		List<Profession> list = getProfessionService().getProRank();
		JSONObject json = new JSONObject();
		json.put("list", list);
		model.addAttribute("result", json);
		return "proRank";
	}
	
	@RequestMapping(value = "/proDetail/{proNo}", method = RequestMethod.GET)
	public String getProDetail(Model model,@PathVariable int proNo) {
		Profession profession = getProfessionService().getProDetail(proNo);
		JSONObject json = new JSONObject();
		json.put("profession", profession);
		model.addAttribute("result", json);
		return "proDetail";
	}	

	public ProfessionService getProfessionService() {
		return professionService;
	}

	public void setProfessionService(ProfessionService professionService) {
		this.professionService = professionService;
	}
}
