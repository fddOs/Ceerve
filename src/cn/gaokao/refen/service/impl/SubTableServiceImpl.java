package cn.gaokao.refen.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.SubTable;
import cn.gaokao.refen.mapper.SubTableMapper;
import cn.gaokao.refen.service.SubTableService;

@Service
public class SubTableServiceImpl implements SubTableService {

	@Autowired
	private SubTableMapper subTableMapper;

	@Override
	public SubTable getSubTable(Map<String,Object> map) {
		return subTableMapper.getSubTable(map);
	}

	public SubTableMapper getSubTableMapper() {
		return subTableMapper;
	}

	public void setSubTableMapper(SubTableMapper subTableMapper) {
		this.subTableMapper = subTableMapper;
	}

}
