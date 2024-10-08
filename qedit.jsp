<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online MCQ App</title>
<style>
	h1{font-style:italic;font-weight:bolder;font-size:60px;}
	h2{font-style:italic;font-weight:bolder;}
	body{background-image:url('img1.jpg');background-repeat:no-repeat;background-size: cover;background-attachment: fixed;}
</style>
</head>
<body>
<h1 align=center>Online MCQ App</h1>
<h2 align=center>Questions List</h2>
<%@page import="java.sql.*,mcq.dbcon.DBConnection" %>
<table align=center>
<%
     String qno=request.getParameter("q");
  	try
	{
		Connection con=DBConnection.getCon();
		PreparedStatement ps=con.prepareStatement("select * from mque where qno=?");
      	ps.setString(1,qno);
     	ResultSet rs=ps.executeQuery();
     	String que="";
     	while(rs.next())
     	{
%>
   	   	<form action=qeditaction.jsp>
   	   	<input type=hidden value="<%=qno %>" name=qn>
   	   	<tr><td>SubjectCode</td><td><%= rs.getString(2) %></td></tr>
   	   	<tr><td>Question</td><td><input type=text value="<%= rs.getString(3) %>" name=qt size=100></td></tr>
		<tr><td>Option1</td><td><input type=text value="<%= rs.getString(4) %>" name=op1></td></tr>
   	   	<tr><td>Option2</td><td><input type=text value="<%= rs.getString(5) %>" name=op2></td></tr>
   	   	<tr><td>Option3</td><td><input type=text value="<%= rs.getString(6) %>" name=op3></td></tr>
   	   	<tr><td>Option4</td><td><input type=text value="<%= rs.getString(7) %>" name=op4></td></tr>
   	   	<tr><td>Answer</td><td><input type=text value="<%= rs.getString(8) %>" name=ans></td></tr>
   	   	<tr><td colspan=2><input type=submit value=Update></td></tr>
   	   </form>
    <%
     }
        con.close();
}
catch(Exception e)
{
   out.println(e);
}

    
%></table>
</body>
</html>