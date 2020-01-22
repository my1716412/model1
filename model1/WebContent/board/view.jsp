<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>

<%
	Connection myConn=null;
	Statement stmt=null;
	try {
		String dbdriver = "oracle.jdbc.OracleDriver";    
		String dburl = "jdbc:oracle:thin:@localhost:1521:xe";

		Class.forName(dbdriver);
		myConn = DriverManager.getConnection(dburl, "hr", "hr");
		stmt = myConn.createStatement();	
	} catch(SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage());
	}
	
	String c_no = request.getParameter("c_no");	
	String mySQL = " select no, subject, contents, poster, lastpost,  views " +
           	" from board " +
           	" where no=" + c_no;

	ResultSet myResultSet = stmt.executeQuery(mySQL);
	
	int no, views;
	String subject="", contents="", poster="";
	Date lastpost=null;
	
	if (myResultSet.next()) {
		no = myResultSet.getInt("no");	
		subject = myResultSet.getString("subject");
		contents = myResultSet.getString("contents");
		poster = myResultSet.getString("poster");
		lastpost = myResultSet.getDate("lastpost");
		views = myResultSet.getInt("views");			
	}	
	stmt.close();  
	myConn.close();
%>

<html>
<head><title>게시판</title></head>

<body>
<table width="80%" align="center" border=1 cellspacing=0 >
  <tr height=28 align="center">
    <td width= 80 bgcolor="#FFFF99">글쓴이</td><td><%=poster %></td>
    <td bgcolor="#FFFF99">등록일</td><td><%=lastpost %></td></tr>
  <tr height=28>
    <td bgcolor="#FFFF99" align="center">제목</td>  
    <td colspan=3>&nbsp<%=subject %></td></tr>
  <tr height=200> 
    <td bgcolor="#FFFF99" align="center">내용</td>  
    <td colspan=3>&nbsp<%=contents %></td></tr>	   
</table>

<table width="75%" align="center" >
  <tr align="center" >
    <td><a href="update_form.jsp?c_no=<%=c_no%>">수정</a></td> 
    <td><a href="delete_verify.jsp?c_no=<%=c_no%>">삭제</a></td> 
    <td><a href="list.jsp">목록으로</a></td> 
  </tr>
</table>
</body>
</html>