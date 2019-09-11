package nsin.mapper;

import java.util.List;
import java.util.Map;

public interface NsinMapper {
	
	public List<Map<String, Object>> selectList(Map<String, String> param) throws Exception;	// 조회

}
