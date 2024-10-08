<%@page import="mcq.dbcon.DBConnection"%>s
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
<h2 align=center>Admin</h2>
<table align=center border=2>
<caption><b>All User's Score</b></caption>
   <tr bgcolor=lightblue><th>SlNo</th><th>Name</th><th>Email</th><th>Score</th><th>Percentage</th><th>Examination Date</th><th>Certificate Type</th></tr>
  <%@page import="java.sql.*" %>
<%
   String uid=(String)session.getAttribute("uid");
   try
   {
	   	String c="none";
	   	int i=0;
		Connection con=DBConnection.getCon();
        PreparedStatement ps=con.prepareStatement("select userinfo.uname,resreport.score,resreport.email,resreport.per,resreport.edate from userinfo,resreport where userinfo.email=resreport.email");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {   
        	i++;
        	if(rs.getFloat(4)>=80.0)
        		c="Gold";
			else if(rs.getFloat(4)>=40.0 &&rs.getFloat(4)<80.0)
        		c="Silver";
        	else if(rs.getFloat(4)<40.0)
        		c="Bronze";
          	out.println("<tr><td>"+i+"</td><td>"+rs.getString(1)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+c+"</td></tr>");
        }
        con.close();
   }
	catch(Exception e)
   	{
      	out.println(e);
   	}
 	response.setHeader("Refresh", "5;URL=awelcome.jsp");
   %>
</table>
</body>
</html>