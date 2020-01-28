<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>homework3_array.jsp</title></head>
<body>
<input type="text">
<input type="text">
<input type="text">
<input type="text">
<div id="result">1,홍길동,hong,2019/12/01</div>
<script>
	let txtArr = [];
	var str = document.getElementById("result").innerHTML;
	txtArr = str.split(",");
	//div의 값을 콤마(,)로 분리하여 각각의 텍스트필드에 출력
	var inputArr = document.getElementsByTagName("input")
	//div 내용을 배열로 변환 : split
	for(i=0; i<inputArr.length; i++){
		inputArr[i].value = txtArr[i];
	}
</script>
</body>
</html>