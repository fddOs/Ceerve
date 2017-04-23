package cn.gaokao.refen.service;

import java.util.List;
import java.util.Map;

import cn.gaokao.refen.Entity.SPYBCSInfo;

/** 
* @author 作者 : 方典典
* @version 创建时间：2017年3月27日 下午4:59:33 
* 类说明 
*/
public interface SpybcsService {
	public List<SPYBCSInfo> getHisScore(Map<String,String> map);
}
