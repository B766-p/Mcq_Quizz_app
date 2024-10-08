<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online MCQ App</title>
</head>
<body>
<h1 align=center>Online MCQ App</h1>
<%@page import="java.sql.*,mcq.dbcon.DBConnection" %>
<%
String qno=request.getParameter("qn");
String qt=request.getParameter("qt");
String op1=request.getParameter("op1");
String op2=request.getParameter("op2");
String op3=request.getParameter("op3");
String op4=request.getParameter("op4");
String ans=request.getParameter("ans");
try
{
	 Connection con=DBConnection.getCon();
     PreparedStatement ps=con.prepareStatement("update mque set qt=?,op1=?,op2=?,op3=?,op4=?,ans=? where qno=?");
    ps.setString(1,qt);
    ps.setString(2,op1);
    ps.setString(3,op2);
    ps.setString(4,op3);
    ps.setString(5,op4);
    ps.setString(6,ans);
    ps.setString(7,qno);
ps.executeUpdate();
   con.close();
}
catch(Exception e)
{
	out.println(e);
}
response.sendRedirect("viewque.jsp");
%>
</body>
</html>