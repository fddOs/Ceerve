package cn.gaokao.refen.mapper;

import java.util.List;
import javax.annotation.Resource;

import cn.gaokao.refen.Entity.Profession;

@Resource
public interface ProfessionMapper {
	public void addProfession(List<Profession> list);
	public List<Profession> getProRank();
	public Profession getProDetail(int proNO);
}
