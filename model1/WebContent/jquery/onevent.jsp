<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btn").on("click", function() {
			$("ul").append("<li>"+$("#book").val());
		});
		$("ul").on("mouseover","li", function(){
			$(this).css("backgroundColor","gray");
		});
	});
</script>
</head>
<body>
<input id = "book">
<button type="button" id="btn">추가</button>
<ul>
	<li>자바
	<li>스프링
</ul>
</body>
</html>