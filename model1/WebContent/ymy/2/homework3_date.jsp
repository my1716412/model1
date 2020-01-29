<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>homework3_date.jsp</title>
<script>
	window.addEventListener("load",function(){
		btnCalc.addEventListener("click", function(){
		//버튼 클릭 이벤트 지정
		//입력날짜와 오늘 날짜까지의 일수 계산하여 div에 출력 "남은 일수는 00일입니다."
		//반올림해서 출력 할 것
		//입력날짜 형식 검증
		var dt = document.getElementById("inDate").value;
		const dt_regexp = /^(19|20)\d{2}[\.|\/|\-](0[1-9]|1[012])[\.|\/|\-](0[1-9]|[12][0-9]|3[0-1])$/;
		
		if(dt_regexp.test(dt)){
			var y = dt.substring(0, 4);
			var m = dt.substring(5, 7);
			var d = dt.substring(8, 10);
			
			var inputDt = new Date(y, m-1, d);
			var curDt = new Date();
			var diffDt = inputDt - curDt;
			var result = Math.round(diffDt / (60*1000*60*24));
			document.getElementById("result").innerHTML = "남은 일수는 " + result + "일입니다.";
		}else{
			alert("날짜 형식이 아닙니다.");
		}
		//날짜 연산 가능함 
		//var a = new Date() - new Date(2020,0,10); //밀리세컨드 long int//
		
		//console.log(a / 1000 / 60 / 60 /24 );     //반올림하여 정수값으로//
		});
	});
</script>
</head>
<body>
날짜 카운터다운<br>
<input id="inDate"><button type="button" id="btnCalc">계산</button>
<div id="result"></div>
</body>
</html>