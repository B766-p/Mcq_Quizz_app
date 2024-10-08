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
</style>
</head>
<body>
<h1 align=center>Online MCQ App</h1>
<h2 align=center>Registered Student</h2>
<%@ page import ="java.sql.*" %>
<%
	int i=1;
	try
	{
		Connection con=DBConnection.getCon();
		PreparedStatement ps=con.prepareStatement("select * from userinfo where utype='student' order by roll");
		ResultSet rs=ps.executeQuery();
		out.println("<table border=2 align=center>");
		out.println("<tr><th>Sl No</th><th>User Name</th><th>User Pass</th><th>Roll</th><th>Mobile</th><th>Email</th><th>Action</th></tr>");
  		while(rs.next())
  		{
  			out.println("<form action=sedit.jsp><input type=hidden value="+rs.getString(2)+" name=q><tr><td>"+(i++)+"</td><td>"+rs.getString(2)+"</td><td>XXXXXXXXXX</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><input type=submit value=Edit name=ed</td></tr></form>");
  		}	  
  		out.println("</table>");
  		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
	response.setHeader("Refresh", "5;URL=awelcome.jsp");
%>
</body>
</html>