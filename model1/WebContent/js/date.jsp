<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	//var 
/* 	"use strict";
	var result = 0;
	function sum(a,b) {
		 result = a+b;
	}
	sum(5,10);
	console.log(result); */
	
	//날짜지정
	var str = "2020/01/29"
	var dArr = str.split("/");
	var today = new Date(dArr[0],dArr[1]-1,dArr[2]);
	console.log(today);
	console.log(today.getFullYear());
	console.log(today.getMonth()+1);
	console.log(today.getDate());
	console.log(today.getDay());
</script>
</body>
</html>