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
<h2 align=center>User's Feedback</h2><br>

<table border=2 align=center>
  <%@page import="java.sql.*,mcq.dbcon.DBConnection" %>
   <%
        String email=(String)session.getAttribute("em");
         if(email==null)
        	  response.sendRedirect("login.html");
         try
         {
      	   	int i=0;
        	Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select * from feed order by fdate desc");
			ResultSet rs=ps.executeQuery();
            out.println("<tr><th>SLNo</th><th>Email</th><th>Score</th><th>Feedback</th><th>Feedback Date</th></tr>");
              while(rs.next())
              {   
            	  i++;
            	  out.println("<tr><td>"+i+"</td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
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