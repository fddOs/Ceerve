package cn.gaokao.refen.service;

import java.util.List;
import java.util.Map;

import cn.gaokao.refen.Entity.ProScore;

public interface ProScoreService {
	public List<ProScore> getProScore(Map<String,Object> map);
}
