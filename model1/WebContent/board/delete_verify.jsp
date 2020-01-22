<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<%

	stmt = myConn.createStatement();

	request.setCharacterEncoding("euc-kr");
	int c_no = Integer.parseInt(request.getParameter("c_no"));

	mySQL = "delete board " +
            " where no =" + c_no ;

    stmt.executeQuery(mySQL);

	stmt.close();   
	myConn.close(); 
%>

<script>
	alert("삭제되었습니다.");
	location.href="list.jsp";
</script>

