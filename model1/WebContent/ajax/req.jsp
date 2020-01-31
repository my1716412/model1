<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.addEventListener("load", function(){
	btn.addEventListener("click", loadDoc);
});

function loadDoc() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	    	var xmlDoc = xhttp.responseXML;
	    	var no = xmlDoc.getElementsByTagName("no")[0].childNodes[0].nodeValue
	    	var name = xmlDoc.getElementsByTagName("name")[0].childNodes[0].nodeValue
	    	txtNo.value = no ;
	    	txtName.value = name ;
	    }
	  };
	  var param = "no="+txtNo.value; //쿼리 문자열 url변수명=&변수명=값
	  xhttp.open("GET", "../GetXML.do", true);
	  xhttp.send();
}
</script>
</head>
<body>
<h3>ajax 연습</h3>
이름검색 
<input id="txtNo">
<input id="txtName">
<button type="button" id="btn">요청</button>
</body>
</html>