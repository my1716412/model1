<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String kakaoId = (String)request.getParameter("kakaoid");
	System.out.println("# kakaoId : " + kakaoId);
	
	//파라메터 출력해보기
	Map<String, String[]> parameters = request.getParameterMap();
	for (String parameter : parameters.keySet()) {
		String[] values = parameters.get(parameter);
		System.out.println(parameter + "-->" + values[0]);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>