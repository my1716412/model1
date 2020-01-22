<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>
<%@ include  file ="dbconnect.jsp"%>
<%
	
	request.setCharacterEncoding("euc-kr");	

	mySQL = " update board set " + 	
	        " subject=?, contents=? where no=?"; 
	        
	PreparedStatement pstmt = myConn.prepareStatement(mySQL);
	
	pstmt.setString(1, request.getParameter("c_subject"));
	pstmt.setString(2, request.getParameter("c_contents"));
	
	int c_no = Integer.parseInt(request.getParameter("c_no"));
	pstmt.setInt(3, c_no);

	pstmt.executeUpdate();
	
	pstmt.close();   
	myConn.close(); 
%>

<script>
	alert("수정되었습니다.");
	location.href="view.jsp?c_no="+<%=c_no %>;
</script>
