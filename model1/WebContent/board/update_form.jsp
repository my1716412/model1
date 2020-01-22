<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>

<html>
<head><title>게시판</title></head>

<body>
<%@ include file="dbconnect.jsp" %>
<%
	
	int no, views;
	String subject="", contents="", poster="";
	Date lastpost=null;

	int c_no = Integer.parseInt(request.getParameter("c_no"));  

	 mySQL = " select no, subject, contents, poster, lastpost,  views " +
                " from board " +
                " where no=" + c_no;

	 myResultSet = stmt.executeQuery(mySQL);
		
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

<form method="post" action="update_verify.jsp">
<input type="hidden" name="c_no" size="30" value="<%=c_no%>">
<table width="80%" align="center" border=1 cellspacing=0>
  <tr height=35>
    <td align="center" width=80 bgcolor="#FFFF99">글쓴이</td> 
    <td><%=poster %></td></tr>
  <tr height=35>
    <td align="center" bgcolor="#FFFF99">제목</td>  
    <td><input type="text" name="c_subject" size="70" value="<%=subject%>"> 
        </td></tr>
  <tr height=170> 
    <td bgcolor="#FFFF99" align="center">내용</td>  
    <td><textarea name=c_contents rows="10" cols="70"><%= contents %>           
        </textarea></td> </tr>	  
</table>

<table width="75%" align="center">
  <tr align="center" >
    <td><input type="submit" value="수정"></td>
    <td><a href="list.jsp">목록으로</a></td> 
  </tr>
</table>

</form>
</body>
</html>