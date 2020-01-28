<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 img {width:200px}
</style>
<script>
	window.onload = function(){
		// 모든 이미지의  alt 속성만 div에출력
		var imgArr = document.getElementsByTagName("img");
		console.log(imgArr);
		var text ="";
		for(i=0; i<imgArr.length; i++) {
			text += imgArr[i].alt + "<br>";
		}
		document.getElementById("result").innerHTML = text;
	}
</script>
</head>
<body>
	<img src="../img/Lighthouse.jpg" alt="등대">
	<img src="../img/Tulips.jpg" alt="튤립">
	<img src="../img/Desert.jpg" alt="사막">
	<div id="result"></div>
</body>
</html>