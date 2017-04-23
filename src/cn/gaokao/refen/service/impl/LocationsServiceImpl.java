package cn.gaokao.refen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.Province;
import cn.gaokao.refen.mapper.LocationsMapper;
import cn.gaokao.refen.service.LocationsService;

@Service
public class LocationsServiceImpl implements LocationsService {
	@Autowired
	private LocationsMapper locationsMapper;

	@Override
	public List<Province> getLocations() {
		return locationsMapper.getLocations();
	}

	public LocationsMapper getLocationsMapper() {
		return locationsMapper;
	}

	public void setLocationsMapper(LocationsMapper locationsMapper) {
		this.locationsMapper = locationsMapper;
	}

}
