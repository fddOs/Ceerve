package cn.gaokao.refen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.Category;
import cn.gaokao.refen.mapper.CategorysMapper;
import cn.gaokao.refen.service.CategorysService;

@Service
public class CategorysServiceImpl implements CategorysService {
	@Autowired
	private CategorysMapper categorysMapper;

	@Override
	public List<Category> getCategorys() {
		return categorysMapper.getCategorys();
	}

	public CategorysMapper getCategorysMapper() {
		return categorysMapper;
	}

	public void setCategorysMapper(CategorysMapper categorysMapper) {
		this.categorysMapper = categorysMapper;
	}

}
