<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load", function(){
		btnAddr.addEventListener("click", function(){
		window.open("popup.jsp","addr","width=300",
					"height=300");	
		})
	});
	
	function setAddr(p) {
		document.frm.addr.value = p.addr1+","+p.addr2;
	}
</script>
</head>
<body>
<form id="frm" name="frm">주소 <input name="addr">
	   <button type="button" id="btnAddr">주소검색</button>
</form>
</body>
</html>