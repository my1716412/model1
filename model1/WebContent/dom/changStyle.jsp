<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load",init);
	
	function init() {
		btn.addEventListener("click", function(){
			//div 숨기기 : display = none
			result.style.dispaly = "none";
			
		});
		
		btn.addEventListener("mouseout", function(){
			result.style.dispaly = "";
			
		});
		img1.addEventListener("error", function(){
			//이미지의  src변경
			this.src="../img/Lighthouse.jpg";
			
		})
		
	}
</script>
</head>
<body>
	<button type="button" id="btn">숨기기</button>
	<div id="result">남산의 부장들 소개</div>
	<img src="../img/penguin.jpg" id="img1" onerror="this.crc='../img/Lighthouse.jpg'">
</body>
</html>