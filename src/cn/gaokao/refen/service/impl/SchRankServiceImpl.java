package cn.gaokao.refen.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.School;
import cn.gaokao.refen.mapper.SchRankMapper;
import cn.gaokao.refen.service.SchRankService;

/**
 * Created by juncheng on 2017/3/6.
 */
@Service
public class SchRankServiceImpl implements SchRankService {
	@Autowired
	private SchRankMapper schRankMapper;

	public SchRankMapper getSchRankMapper() {
		return schRankMapper;
	}

	public void setSchRankMapper(SchRankMapper schRankMapper) {
		this.schRankMapper = schRankMapper;
	}

	@Override
	public List<School> getSchRank() {
		return schRankMapper.getSchRank();
	}
	@Override
	public List<School> getSchRankFilter(HashMap<String,String> map) {
		return schRankMapper.getSchRankFilter(map);
	}

	@Override
	public School getSchoolInfo(String scName) {
		return schRankMapper.getSchoolInfo(scName);
	}
}
