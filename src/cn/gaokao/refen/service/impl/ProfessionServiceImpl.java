package cn.gaokao.refen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.Profession;
import cn.gaokao.refen.mapper.ProfessionMapper;
import cn.gaokao.refen.service.ProfessionService;

@Service
public class ProfessionServiceImpl implements ProfessionService {
	@Autowired
	private ProfessionMapper professionMapper;

	@Override
	public List<Profession> getProRank() {
		return getProfessionMapper().getProRank();
	}

	@Override
	public Profession getProDetail(int proNo) {
		return professionMapper.getProDetail(proNo);
	}
	public ProfessionMapper getProfessionMapper() {
		return professionMapper;
	}

	public void setProfessionMapper(ProfessionMapper professionMapper) {
		this.professionMapper = professionMapper;
	}
}
