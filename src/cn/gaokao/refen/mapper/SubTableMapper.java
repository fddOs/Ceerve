package cn.gaokao.refen.mapper;

import java.util.Map;

import javax.annotation.Resource;

import cn.gaokao.refen.Entity.SubTable;

@Resource
public interface SubTableMapper {
	public void setSubTable(SubTable subTable);
	public SubTable getSubTable(Map<String,Object> map);
}
