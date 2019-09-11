<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Description : Sample List 화면
  * @Modification Information
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>테스트</title>
    <script type="text/javascript" src="/egov_web/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="/egov_web/js/jquery-3.4.1.min.js"></script>
    <script type="text/javaScript" language="javascript" defer="defer">
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updateSampleView.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 등록 화면 function */
        function fn_egov_addView() {
           	document.listForm.action = "<c:url value='/addSample.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
           	document.listForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
           	document.listForm.submit();
        }
        
    </script>
</head>
<script>
function mybatisTest(){
	$.ajax({
	    url: "test",
	    type: "POST",
	    cache: false,
	    dataType: "json",
	    data: "no=1" ,
	    success: function(data){
	      alert("성공");
	},
  
  	error: function (request, status, error){        
      	var msg = "ERROR : " + request.status + "<br>"
    	msg +=  + "내용 : " + request.responseText + "<br>" + error;
    	console.log(msg);              
  	}
});
}
</script>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        <input type="hidden" name="selectedId" />
        <div id="content_pop">
        	<!-- 타이틀 -->
        	<div id="title">
        		<ul>
        		</ul>
        	</div>
        	<!-- // 타이틀 -->
        	
        	
        	
        			<input type="button" id="button1" onclick="mybatisTest();" value="테스트" />
        	          
        </div>
    </form:form>
</body>
</html>
