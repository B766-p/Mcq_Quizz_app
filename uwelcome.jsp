<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online MCQ App</title>
<style>
	h1{font-style:italic;font-weight:bolder;font-size:80px;}
	h2{font-style:italic;font-weight:bolder;font-size:50px;}
	body{background-image:url('img1.jpg');background-repeat:no-repeat;background-size: cover;background-attachment: fixed;}
	table{width:200px;height:200px;}
	th{background:black;font-weight:bolder;}
	a{color:white;}
	a:hover{color:blue;}
</style>
</head>
<body>
<h1 align=center>Online MCQ App</h1>
    <%
    	String email=(String)session.getAttribute("em");
    	String uid=(String)session.getAttribute("uid");
    	if(uid==null)
    		response.sendRedirect("login.html");
    	else
    		out.println("<h2 align=center>Welcome User</h2>");
    	session.setAttribute(uid+"res","0");
        session.setAttribute(uid+"q","0");
    %>
    <table align=center>
    <tr><th><a href='profile.jsp'>View Profile</a></th></tr>
    <tr><th><a href='loadque.jsp'>Practice Test</a></th></tr>
    <tr><th><a href='uscore.jsp'>View Score</a></th></tr>
    <tr><th><a href='logout.jsp'>Logout</a></th></tr>
    </table>
</body>
</html>