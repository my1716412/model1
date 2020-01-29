<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 table,td { border: 1px solid black; display: inline-block;}
 div { border: 1px solid black;}
</style>
<script>
	window.addEventListener("load", function() {
		var row = tbl2.insertRow(0);
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		cell1.innerHTML="홍길동";
		cell2.innerHTML="100";
		
		// tr 태그에 더블클릭 이벤트 지정. 선택한 행을 오른쪽으로 이동
		
	})
</script>
</head>
<body>
<table id="tbl1">
	<tr><td>1</td><td>2</td></tr>
	<tr><td>1</td><td>2</td></tr>
</table>
<table id="tbl2"></table>

<div id="div1">
  <p id="p1">This is a paragraph.</p>
  <p id="p2">This is another paragraph.</p>
</div>
<div id="div2"></div>
	
</body>
</html>