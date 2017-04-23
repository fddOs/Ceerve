package cn.gaokao.refen.mapper;

import java.util.List;
import java.util.Map;

import cn.gaokao.refen.Entity.ProScore;

/**
 * @author 作者:方典典
 * 时间:2017年3月27日:下午9:05:36
 * 说明:
 */
public interface ProScoreMapper {
	public void addProScore(List<ProScore> list);
	public List<ProScore> getProScore(Map<String,Object> map);
}
