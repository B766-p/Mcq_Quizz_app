<%@page import="mcqapp.LoadQue"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
     LoadQue ob=new LoadQue();
     ArrayList q=ob.que();
     Collections.shuffle(q);
     String uid=(String)session.getAttribute("uid");
     session.setAttribute(uid+"que", q);
     response.sendRedirect("ptest.jsp");
%>
</body>
</html>