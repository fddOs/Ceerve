package cn.gaokao.refen.mapper;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import cn.gaokao.refen.Entity.School;

/**
 * Created by juncheng on 2017/3/6.
 */
@Resource
public interface SchRankMapper {
	public List<School> getSchRank();
	public void addSchRank(List<School> list);
	public List<School> getSchRankFilter(HashMap<String,String> map);
	public School getSchoolInfo(String scName);
}
