package cn.gaokao.refen.service;

import java.util.List;
import java.util.Map;

import cn.gaokao.refen.Entity.PreSchoolScore;

public interface PreSchoolScoreService {
	public List<PreSchoolScore> getPreSchool(Map<String,Object> map);
}
