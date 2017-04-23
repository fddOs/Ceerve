package cn.gaokao.refen.mapper;

import java.util.List;
import javax.annotation.Resource;

import cn.gaokao.refen.Entity.Attribute;

@Resource
public interface AttributesMapper {
	public List<Attribute> getAttributes();
}
