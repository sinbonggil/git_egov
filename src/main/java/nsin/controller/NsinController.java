package nsin.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import egovframework.rte.fdl.property.EgovPropertyService;
import nsin.service.NsinService;

/**
 * @Class Name : NsinController.java
 * @Description : NsinController Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2019.09.10      sin    최초생성
 *
 * @author Nsin
 * @since 2019. 09.10
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
@RestController
@RequestMapping("/nsin")
public class NsinController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(NsinController.class);
	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Autowired
	private NsinService nsinService;
	
	
	/**
	 * SELECT 예제  
	 * @param VO - 조회할 정보가 담긴 VO
	 * @param 
	 * @return "egovSampleList"
	 * @exception Exception
	 */
	@RequestMapping(value="/selectList", method=RequestMethod.POST)
	public Map<String, Object> selectList(@RequestBody Map<String, String >param, HttpServletRequest request) throws Exception {
		
		LOGGER.debug("select list");
		Map<String, Object> retObj = nsinService.selectList(param); 
		
		return retObj;
		
	}
	/**
	 * INSERT 예제  
	 * @param VO - 조회할 정보가 담긴 VO
	 * @param 
	 * @return "egovSampleList"
	 * @exception Exception
	 */
	@RequestMapping(value="/insertList", method=RequestMethod.POST)
	public Map<String, Object> InsertList(@RequestBody Map<String, String >param, HttpServletRequest request) throws Exception {
		
		LOGGER.debug("insert");
		Map<String, Object> retObj = null; 
		int cnt = nsinService.InsertList(param);
		if(cnt > 0) {
			retObj.put("result", "Y");
			
		}else {
			
			retObj.put("result", "fail");
		}
		return retObj;
		
	}
	/**
	 * UPDATE 예제  
	 * @param VO - 조회할 정보가 담긴 VO
	 * @param 
	 * @return "egovSampleList"
	 * @exception Exception
	 */
	@RequestMapping(value="/updateList", method=RequestMethod.POST)
	public Map<String, Object> UpdateList(@RequestBody Map<String, String >param, HttpServletRequest request) throws Exception {
		
		LOGGER.debug("update");
		Map<String, Object> retObj = null; 
		int cnt = nsinService.UpdateList(param);
		if(cnt > 0) {
			retObj.put("result", "Y");
			
		}else {
			
			retObj.put("result", "fail");
		}
		
		return retObj;
		
	}

	/**
	 * 엑세스 테스트 
	 * @param searchVO - 조회할 정보가 담긴 SampleDefaultVO
	 * @param model
	 * @return "egovSampleList"
	 * @exception Exception
	 */
	@RequestMapping(value="/test")
	public String test() throws Exception {
		String a = "aaa";
        System.out.println("a");
	
		return a;
	}
	
	
	
	@RequestMapping(value = "/index")
	public String selectSampleList(ModelMap model) throws Exception {
		System.out.println("요기");
		return "/nsin/indexTest";
		
	}
	
}
