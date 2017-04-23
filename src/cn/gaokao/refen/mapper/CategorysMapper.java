package cn.gaokao.refen.mapper;

import java.util.List;
import javax.annotation.Resource;

import cn.gaokao.refen.Entity.Category;

@Resource
public interface CategorysMapper {
	public List<Category> getCategorys();
}
