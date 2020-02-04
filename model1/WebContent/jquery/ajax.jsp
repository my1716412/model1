<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function(){    //ready 이벤트  == window.load
	result.innerHTML = "로딩중";
	$.ajax("./server/getName.jsp" , 
			{ async:true       // 비동기 no(false) = 동기 (true)
			 ,beforSend : function(){}
			 ,cache : false
			 ,data : $("#frm").serialize()     //파라미터 
			 ,dataType : "json"   //html
			}) 
	 .done(function(data){ result.innerHTML = data.name; })
	 .fail(function(){})
	 .always(function(){});
	 console.log("ajax end");
});  
	
</script>
</head>
<body>
<form id="frm" name="frm">
	<input name="no" value="">
	<input name="name" value="">
</form>
<div id="result"></div>
</body>
</html>
