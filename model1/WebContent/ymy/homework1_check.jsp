<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework.jsp</title>
<script>
window.onload = function(){
	var btn = document.getElementById("btnCheck");
	btn.addEventListener("click", inputCheck);
}

function inputCheck(){
//모든 항목 필수입력 체크
var txtArr = document.querySelectorAll("textarea,[type=text]"); 
for(i=0;i<txtArr.length;i++){
	if(txtArr[i].value == "") {
		alert(txtArr[i].id +"가 입력되지 않았습니다.");
		return;
	}
}
var result;
//이름은 최소 길이가 5글자 이상인지 체크하고 모두 대문자로 변경하여 출력.
var name = document.getElementById("mbName").value;
if(name.length >= 5){
	result = name.toUpperCase();
}else{
	alert("이름은 취소 5글자 이상이여야 합니다");
	return;
}
//이메일은 "@"와 "."을 포함하는지 regexp 체크하여 true/false 결과 출력
var email = document.getElementById("mbEmail").value;
const email_regexp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
result += "<br/>" + email_regexp.test(email);
//등록일자는 날짜 형식이 맞는지 체크하고 년도는 2015~2019년도 사이인지 체크하여 결과 출력
var dt = document.getElementById("mbDate").value;
const dt_regexp = /[\d{2}|\d{4}][\.|\/|\-]\d{1,2}[\.|\/|\-]\d{1,2}/;
if(dt_regexp.test(dt)){
	var yy = dt.substring(0, 4);
	if(yy >= 2015 && yy <= 2019){
		result += "<br/>2015~2019년도 사이";
	}else{
		result += "<br/>2015~2019년도 사이가 아님";
	}
}
//홈페이지는 http로 시작하는지 체크하여 결과 출력
var url = document.getElementById("mbHomepage").value;
if(url.substring(0, 4) == "http"){
	result += "<br/>http로 시작함";
}else{
	result += "<br/>http로 시작하지 않음";
}
//성적은 소수점 2자리까지만 입력하였는지 체크(regexp)하고 아니라면 둘째자리까지만 변경하여 div에 출력
var score = document.getElementById("mbScore").value;
var score_regexp = /^-?(\d{1,3}([.]\d{0,2})?)?$/;
if(!score_regexp.test(score)){
	alert("소수점 2째 자리만 입력 가능합니다.");
	score = parseFloat(score).toFixed(2);
}
result += "<br/>" + score;

//비고란의  \n(엔터키) 를 <br>태그로 변환하여 출력
var txt = document.getElementById("mbBigo").value;
result += "<br/>" + txt.replace(/(\n|\r\n)/g, '<br>');
//출력
document.getElementById("result").innerHTML = result;
}
</script>
</head>
<body>
<form>
	이름 <input type="text" id="mbName" value="test123"/><br>
	이메일 <input type="text" id="mbEmail" value="t@t"/><br>
	등록일자 <input type="text" id="mbDate" value="2014/12/12"/><br>
	홈페이지 <input type="text" id="mbHomepage" value="http://yedam.ac"/><br>
	성적 <input type="text" id="mbScore" value="67.123"/><br>
	비고 <textarea id="mbBigo"></textarea>
	<button type="button" id="btnCheck">입력확인</button>
</form>
<div id="result">
</div>
</body>
</html>