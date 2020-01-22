<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>
<%
 
  Connection myConn = null;
  Statement stmt = null;	
  String mySQL = null;

  String dburl  = "jdbc:oracle:thin:@localhost:1521:ORCL";
  String user="boardadmin";
  String passwd="admin";
  String dbdriver = "oracle.jdbc.OracleDriver";

  Class.forName(dbdriver);
  myConn =  DriverManager.getConnection (dburl, user, passwd);  

  stmt = myConn.createStatement();

  mySQL = "select * from board";

  ResultSet myResultSet = stmt.executeQuery(mySQL);
  if (myResultSet.next()) {
	String subject = myResultSet.getString("subject");
	String contents = myResultSet.getString("contents");
%>

제목 : <%=subject%> <br>
내용 : <%=contents%>

<%
  }
  stmt.close();
  myConn.close();
%>

