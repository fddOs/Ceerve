package cn.gaokao.refen.service;

import java.util.HashMap;
import java.util.List;

import cn.gaokao.refen.Entity.School;

/**
 * Created by juncheng on 2017/3/6.
 */
public interface SchRankService {
	public List<School> getSchRank();
	public List<School> getSchRankFilter(HashMap<String,String> map);
	public School getSchoolInfo(String scName);
}
