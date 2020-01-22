<%@ page import="java.sql.*"  %>
<%
	Connection myConn = null;     
	Statement stmt = null;	
	ResultSet myResultSet = null; 
	String mySQL = "";

	String dbdriver = "oracle.jdbc.OracleDriver";    
	String dburl = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String passwd = "hr";

	try {
			Class.forName(dbdriver);
			myConn =  DriverManager.getConnection (dburl, user, passwd);
			stmt = myConn.createStatement();
			System.err.println("success connect");
	} catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
	}
%>