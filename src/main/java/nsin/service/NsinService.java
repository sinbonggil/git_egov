package nsin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nsin.mapper.NsinMapper;

@Service
public class NsinService {
	private static final Logger logger = LoggerFactory.getLogger(NsinService.class);
	@Autowired
	NsinMapper nsinMapper;
	
	/**
     *  조회
	 */
	public Map<String, Object> selectList(Map<String, String> param) throws Exception {
		
		logger.info("param ::: {}", param);
		Map<String, Object> map = new HashMap<>();
		
		try {
			List<Map<String, Object>> list = (List<Map<String, Object>>) nsinMapper.selectList(param);
			logger.info("result cnt_item ::: {}", list.size());
			map.put("success", "0");
			map.put("cnt", list.size());
			map.put("List", list);
		}catch(Exception e) {
			map.put("success", "-1");
			map.put("message", "오류발생");
			logger.info("임시저장내역 조회 오류발생 INPUT PARAMS: {}", param);
		}
		
		return map;
	}
}
