package nsin.mapper;

import java.util.List;
import java.util.Map;

public interface NsinMapper {
	
	public List<Map<String, Object>> selectList(Map<String, Object> param) throws Exception;	// 조회
	public int insertList(Map<String, String> param) throws Exception;	// 조회
	public int updateList(Map<String, String> param) throws Exception;	// 조회

}
