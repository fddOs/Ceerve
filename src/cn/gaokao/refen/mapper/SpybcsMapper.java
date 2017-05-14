package cn.gaokao.refen.mapper;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import cn.gaokao.refen.Entity.SPYBCSInfo;

@Resource
public interface SpybcsMapper {
	public void addSpybcsinfo(List<SPYBCSInfo> list);
	public List<SPYBCSInfo> getHisScore(Map<String,String> map);
	public List<SPYBCSInfo> getSelectSchool(Map<String,Object> map);
}
