<%@page import="mcqapp.DBcon"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online MCQ App</title>
</head>
<body>
<h1>Online MCQ App</h1><hr color=green size=10>
<%@ page import="java.sql.*" %>
<%
	String utype=request.getParameter("ut");
	String name=request.getParameter("name");
	String pass=request.getParameter("pass");
	int roll=Integer.parseInt(request.getParameter("roll"));
	String contact=request.getParameter("cont");
	String email=request.getParameter("email");
	
	try
	{
		Connection con=DBcon.getCon();
		PreparedStatement ps=con.prepareStatement("insert into userinfo values(?,?,?,?,?,?)");
		ps.setString(1,utype);
		ps.setString(2,name);
		ps.setString(3,pass);
		ps.setInt(4,roll);
		ps.setString(5,contact);
		ps.setString(6,email);
		int rs=ps.executeUpdate();
		if(rs >=1)
		{
			response.sendRedirect("login.html");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
</html>