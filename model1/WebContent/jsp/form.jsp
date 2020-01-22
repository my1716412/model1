<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="elTest.jsp">
	<input type="text" name="name" value="hong">
	<input type="checkbox" name="hobby" value="ski">스키
	<input type="checkbox" name="hobby" value="read">독서
	<input type="checkbox" name="hobby" value="game">게임
	<button>등록</button>
</form>
<%

	 Cookie cookie = new Cookie("openYn","yes");
	 cookie.setMaxAge(60*2);
	 cookie.setPath("/");
	 response.addCookie(cookie);
%>
</body>
</html>