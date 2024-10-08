<%@page import="mcq.service.ProfileInfo"%>
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
<h2>Profile</h2>
<%
      	String email=(String)session.getAttribute("em");
		ProfileInfo ob=new ProfileInfo();
      	out.println(ob.getInfo(email));
%>
</body>
</html>