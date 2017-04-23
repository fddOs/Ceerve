package cn.gaokao.refen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import cn.gaokao.refen.service.LocationsService;

@Controller
public class LocationsController {
	@Autowired
	private LocationsService locationsService;

	@ResponseBody
	@RequestMapping(value="/getLocations",method=RequestMethod.GET)
	public String getLocations(){
		JSONObject json = new JSONObject();
		json.put("Locations", locationsService.getLocations());
		return json.toString();
	}
	
	public LocationsService getLocationsService() {
		return locationsService;
	}

	public void setLocationsService(LocationsService locationsService) {
		this.locationsService = locationsService;
	}
}
