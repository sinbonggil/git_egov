<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>테스트화면</title>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javaScript" language="javascript">

function SELECT(){
	var jsonObject = {
			"id" : "test",
			"name" : "hangul"
	}
	var jsonStr = JSON.stringify(jsonObject);

	console.log("jsonStr : " + jsonStr);

	 $.ajax({
		headers: { 
	            'Accept': 'application/json',
	            'Content-Type': 'application/json' 
	        },
		url: "./nsin/selectList",
		type: "POST",
	    cache: false,
	    dataType: "json",
	    data: jsonStr,
	    success: function(data){
				alert("data : " +data);	    	
	    },
	    error: function (request, status, error){        
	      var msg = "ERROR : " + request.status + "<br>"
	      msg +=  + "내용 : " + request.responseText + "<br>" + error;
	      console.log(msg);              
	    }
	 });
}
function INSERT(){
	  
	var jsonObject = {
			"id" 		: "sample-111",
			"name" 		: "insertT11110",
			"des" 		: "insert",
			"useYn" 	: "Y",
			"regUser" 	: "hangul"
	}
	var jsonStr = JSON.stringify(jsonObject);
	
	
	 $.ajax({
			headers: { 
		            'Accept': 'application/json',
		            'Content-Type': 'application/json' 
		        },
			url: "./nsin/insertList",
			type: "POST",
		    cache: false,
		    dataType: "json",
		    data: jsonStr,
		    success: function(data){
					alert("data : " +data);	    	
		    },
		    error: function (request, status, error){        
		      var msg = "ERROR : " + request.status + "<br>"
		      msg +=  + "내용 : " + request.responseText + "<br>" + error;
		      console.log(msg);              
		    }
		 });
	
	
	alert("insert");
	
}
function UPDATE(){
	alert("update");
	
}
</script>



</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
  <form>
  <h1>테스트</h1>
  <br>
  <input type="hidden" name="selectedId" />
  <input type="button" id="button1" value="SELECT" onclick="SELECT();">
  <input type="button" id="button2" value="INSERT" onclick="INSERT();">
  <input type="button" id="button3" value="UPDATE" onclick="UPDATE();">
  </form> 
</body>
</html>

