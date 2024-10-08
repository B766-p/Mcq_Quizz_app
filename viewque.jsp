<%@page import="mcq.dbcon.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online MCQ App</title>
<style>
	h1{font-style:italic;font-weight:bolder;font-size:80px;}
	body{background-image:url('img1.jpg');background-repeat:no-repeat;background-size: cover;background-attachment: fixed;}
	th{background:pink;color:red;font-weight:bolder;}
	td{font-weight:bolder;}
	tr{background:pink;}
</style>
</head>
<body>
<h1 align=center>Online MCQ App</h1>
<h2 align=center>Questions List</h2>
<%@ page import ="java.sql.*" %>
<%
	try
	{
		Connection con=DBConnection.getCon();
		PreparedStatement ps=con.prepareStatement("select * from mque order by scode");
		ResultSet rs=ps.executeQuery();
		out.println("<table border=2 align=center width=1000>");
		out.println("<tr><th>Subject Code</th><th>Q no</th><th>Questions</th><th>Option 1</th><th>Option 2</th><th>Option 3</th><th>Option 4</th><th>Answer</th><th>Action</th></tr>");
  		while(rs.next())
  		{
  			out.println("<form action=qedit.jsp><input type=hidden value="+rs.getString(1)+" name=q><tr><td>"+rs.getString(2)+"</td><td>"+rs.getString(1)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td><input type=submit value=Edit></td></tr></form>");
  		}	  
  		out.println("</table>");
  		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
response.setHeader("Refresh", "10;URL=awelcome.jsp");
%>
</body>
</html>