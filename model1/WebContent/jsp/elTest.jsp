<%@page import="java.util.List"%>
<%@page import="co.yedam.app.board.BoardDTO"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/elTest.jsp</title>
</head>
<body>
속성읽기<br>
session의 name 속성<br>
표현식: <%=session.getAttribute("name") %><br>
EL: ${sessionScope.name }<br>

<hr>
application의 name<br>
표현식: <%=application.getAttribute("name") %><br>
EL: ${applicationScope.name }<br>

<hr>
userInfo의 dept키의 값<br>
표현식: <%=((Map<String, Object>)request.getAttribute("userInfo")).get("dept") %><br>
EL: ${userInfo.dept }<br>

<hr>
board의 제목<br>
표현식: <%=((BoardDTO)request.getAttribute("board")).getSubject() %><br>
EL: ${board.subject }<br>

<hr>
boardList 첫번째 게시글의 작성자<br>
표현식: <%=((List<BoardDTO>)request.getAttribute("boardList")).get(0).getPoster() %><br>
<%
List<BoardDTO> bl = (List<BoardDTO>)request.getAttribute("boardList");
BoardDTO dto = bl.get(0);
out.print(dto.getPoster());
%>
<br>
EL: ${boardList[0].poster }<br>
<hr>
쿠키정보<br>
jsp표현식: <%Cookie[] cookies = request.getCookies();	%><br>
El: ${cookie.openYn.value }<br>
<hr>
파라미터(배열)<br>
표현식: <%--=request.getParameterValues("hobby")[0] --%><br>
EL: ${paramValues.hobby[0] }<br>
파라미터<br>
표현식: <%= request.getParameter("name")%><br>
EL: ${param.name }<br>
<hr>
헤더정보<br>
표현식: <%= request.getHeader("User-Agent") %><br>
EL: ${header["User-Agent"]}<br>
<hr>
request<br>
표현식: <%=request.getContextPath() %><br>
EL: ${pageContext.request.contextPath }<br>
</body>
</html>