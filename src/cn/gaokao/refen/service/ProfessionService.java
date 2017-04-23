package cn.gaokao.refen.service;

import java.util.List;

import cn.gaokao.refen.Entity.Profession;

public interface ProfessionService {
	public List<Profession> getProRank();
	public Profession getProDetail(int proNO);
}
