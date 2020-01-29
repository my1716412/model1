<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load", init);

	function init(){
		divItem.addEventListener("click", function() {
			alert('div');
		})
		btn.addEventListener("click", function(e) {
			alert('btn');
			e.stopPropagetion();  
		})
	}
</script>
</head>
<body>
	<div>
		<button type="button" id="btn">버튼</button>
	</div>
</body>
</html>