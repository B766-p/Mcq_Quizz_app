<%@page import="mcq.dbcon.DBConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*,mcq.dbcon.DBConnection"%>
<%
    String email=(String)session.getAttribute("uid");
    String name=request.getParameter("n");
    String feedback=request.getParameter("f");
    out.println(email+name+feedback);
    try
    {
Connection con=DBConnection.getCon();
    	PreparedStatement ps=con.prepareStatement("insert into feed values(?,?,?,sysdate)");
    	ps.setString(1,email);
    	ps.setString(2,"0");
    	ps.setString(3,feedback);
    	ps.executeUpdate();
    	con.close();
    	
    }
    catch(Exception e)
    {
    	out.println(e);
    }
response.sendRedirect("uwelcome.jsp");
%>

</body>
</html>