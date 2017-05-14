package cn.gaokao.refen.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gaokao.refen.Entity.SPYBCSInfo;
import cn.gaokao.refen.mapper.SpybcsMapper;
import cn.gaokao.refen.service.SpybcsService;

/**
 * @author 作者 : 方典典
 * @version 创建时间：2017年3月27日 下午5:01:00 类说明
 */
@Service
public class SpybcsServiceImpl implements SpybcsService {
	@Autowired
	private SpybcsMapper spybcsMapper;

	@Override
	public List<SPYBCSInfo> getHisScore(Map<String, String> map) {
		return spybcsMapper.getHisScore(map);
	}


	@Override
	public List<SPYBCSInfo> getSelectSchool(Map<String, Object> map) {
		return spybcsMapper.getSelectSchool(map);
	}
	
	public SpybcsMapper getSpybcsMapper() {
		return spybcsMapper;
	}

	public void setSpybcsMapper(SpybcsMapper spybcsMapper) {
		this.spybcsMapper = spybcsMapper;
	}
}
