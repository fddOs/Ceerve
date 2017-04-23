package cn.gaokao.refen.mapper;

import java.util.List;
import javax.annotation.Resource;
import cn.gaokao.refen.Entity.Province;

@Resource
public interface LocationsMapper {
	public List<Province> getLocations();
}
