<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
<button type="button" id="btn">크기변경</button>
<button type="button" id="btn2">크기변경2</button>
<img src="../img/logo.png" id="imgSample">
<script>
	//bind 함수
	/* $("#btn").bind("click", function(){
		//$("#imgSample").css("width","100px");
		$("#imgSample").width("100px"); 
		}) */
	// click 함수
		/* $("#btn").click(function(){
			var w = $("#imgSample").css("width"); //$("#imgSample").width();
			$("#imgSample").width(parseInt(w) - 20);
		}); */
	//on 함수
		/* $("#btn").on("click", function(){
			$("#imgSample").width(200);
		}); */
		$(document).on("click", "#btn", function(){
			$("#imgSample").width(300);
		});
		$("#btn2").on("click", function(){
			$("#btn").click();
		});
</script>
</body>
</html>