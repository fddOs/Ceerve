package cn.gaokao.refen.mapper;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import cn.gaokao.refen.Entity.PreSchoolScore;

@Resource
public interface PreSchoolScoreMapper {
	public List<PreSchoolScore> getPreSchool(Map<String,Object> map);
}
