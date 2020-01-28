<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	//json 객체
	let boardDTO = {no:1, poster:"홍길동", subject:"첫글" }
	
	//스트링 배열
	let atrArr = ["키위","포도","바나나"];
	
	//개체배열
	let boardArr = [{no:1, porster:"홍길동", subject:"첫글" },
				   {no:2, porster:"나길동", subject:"두번째글" },
	               {no:3, porster:"감길동", subject:"세번째글" }];
	
	//boardDTOd의 작성자출력
	document.write(boardDTO.poster +"<br>");
	
	//strArr 두번째 과일출력
	document.write(atrArr[1]+"<br>");
	
	//boardArrdml 세번째 게시글의 제목 출력
	document.write(boardArr[2].subject+"<br>");
	
</script>
</head>
<body>

</body>
</html>