package cn.gaokao.refen.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.PreSchoolScore;
import cn.gaokao.refen.mapper.PreSchoolScoreMapper;
import cn.gaokao.refen.service.PreSchoolScoreService;

@Service
public class PreSchoolScoreServiceImpl implements PreSchoolScoreService {

	@Autowired
	private PreSchoolScoreMapper preSchoolScoreMapper;

	public PreSchoolScoreMapper getPreSchoolScoreMapper() {
		return preSchoolScoreMapper;
	}

	public void setPreSchoolScoreMapper(PreSchoolScoreMapper preSchoolScoreMapper) {
		this.preSchoolScoreMapper = preSchoolScoreMapper;
	}

	@Override
	public List<PreSchoolScore> getPreSchool(Map<String,Object> map) {
		return preSchoolScoreMapper.getPreSchool(map);
	}

}
