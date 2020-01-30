<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	//타이머 연습
	
	//반복실행할 함수
	function printTime() {
		result.innerHTML = (new Date()).getSeconds();
	}
	window.addEventListener("load", function(){
		setInterval(printTime,1000);
		//이미지 변경 타이머지정 (2초마다)
		
	});
	//이미지 배열
	var imgs = ["../img/Lighthouse.jpg","../img/Tulips.jpg","../img/Desert.jpg"]
	//2초마다 이미지가 변경되도록 변경 작성(random, 인덱스증가)
		
</script>
</head>
<body>
<div id="result"></div>
<img src="../img/Lighthouse.jpg"/>
</body>
</html>