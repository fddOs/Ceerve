package cn.gaokao.refen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.Attribute;
import cn.gaokao.refen.mapper.AttributesMapper;
import cn.gaokao.refen.service.AttributesService;

@Service
public class AttributesServiceImpl implements AttributesService {
	@Autowired
	private AttributesMapper attributesMapper;

	@Override
	public List<Attribute> getAttributes() {
		return attributesMapper.getAttributes();
	}

	public AttributesMapper getAttributesMapper() {
		return attributesMapper;
	}

	public void setAttributesMapper(AttributesMapper attributesMapper) {
		this.attributesMapper = attributesMapper;
	}

}
