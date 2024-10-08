<%@page import="mcqapp.Question"%>

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
    String uid=(String)session.getAttribute("uid");
    java.util.ArrayList que=(java.util.ArrayList)session.getAttribute(uid+"que");
    int qn=Integer.parseInt((String)session.getAttribute(uid+"q"));
    Question ob=(Question)que.get(qn-1);
    int r=Integer.parseInt((String)session.getAttribute(uid+"res"));
    
    if(request.getParameter("op").equals(ob.getAns()))
    	{r=r+2;
    	session.setAttribute(uid+"res",r+"");
    	System.out.println("Result="+r);
    	}
    response.sendRedirect("ptest.jsp");
	
%>
</body>
</html>