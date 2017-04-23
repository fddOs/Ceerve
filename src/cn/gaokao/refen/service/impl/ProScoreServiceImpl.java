package cn.gaokao.refen.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.ProScore;
import cn.gaokao.refen.mapper.ProScoreMapper;
import cn.gaokao.refen.service.ProScoreService;

@Service
public class ProScoreServiceImpl implements ProScoreService {
	@Autowired
	private ProScoreMapper proScoreMapper;

	@Override
	public List<ProScore> getProScore(Map<String, Object> map) {
		return proScoreMapper.getProScore(map);
	}

	public ProScoreMapper getProScoreMapper() {
		return proScoreMapper;
	}

	public void setProScoreMapper(ProScoreMapper proScoreMapper) {
		this.proScoreMapper = proScoreMapper;
	}

}
