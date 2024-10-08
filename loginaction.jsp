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
<h1>Online MCQ App</h1><hr color=blue size=10>
<%@ page import ="java.sql.*" %>
<%
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	session.setAttribute("em", email);
	try{
			Connection con=DBcon.getCon();
			PreparedStatement ps=con.prepareStatement("select utype from userinfo where email=? and upass=?");
			ps.setString(1,email);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			String utype="";
		  	if(rs.next())
		  		utype=rs.getString(1);
		  	else
		  		out.println("Record not found..");	  
		  	con.close();
		  	session.setAttribute("utype",utype);
		  	if(utype.equals("student"))
		  	{
		  		session.setAttribute("uid",email);
		  		response.sendRedirect("uwelcome.jsp");
		  	}
		  	if(utype.equals("admin"))
		  	{	
		  		session.setAttribute("b",email);
		  		response.sendRedirect("awelcome.jsp");
		  	}
		  	
		}
		catch(Exception e)
		{
			out.println(e);
		}
%>
</body>
</html>