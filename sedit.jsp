<%@page import="mcqapp.DBcon"%>
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
<h2 align=center>Student Data Edit</h2>
<%@page import="java.sql.*" %>
<table align=center>
<%
     String name=request.getParameter("q");
  	try
	{
		Connection con=DBcon.getCon();
		PreparedStatement ps=con.prepareStatement("select * from userinfo where uname=?");
      	ps.setString(1,name);
     	ResultSet rs=ps.executeQuery();
     	String que="";
     	while(rs.next())
     	{
%>
   	   	<form action=seditaction.jsp>
   	   	<input type=hidden value="<%=name %>" name=qn>
   	   	<tr><td>Utype</td><td><%= rs.getString(1) %></td></tr>
   	   	<tr><td>Name</td><td><input type=text value="<%= rs.getString(2) %>" name=nm></td></tr>
		<tr><td>Upass</td><td><input type=text value="<%= rs.getString(3) %>" name=ps></td></tr>
   	   	<tr><td>Roll</td><td><input type=text value="<%= rs.getString(4) %>" name=rl></td></tr>
   	   	<tr><td>Mobile</td><td><input type=text value="<%= rs.getString(5) %>" name=mb></td></tr>
   	   	<tr><td>Email</td><td><input type=text value="<%= rs.getString(6) %>" name=em></td></tr>
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
</html>