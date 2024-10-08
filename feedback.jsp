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
	<%---body{background-image:url('img1.jpg');background-repeat:no-repeat;background-size: cover;background-attachment: fixed;}---%>
</style>
</head>
<body>
<h1 align=center>Online MCQ App</h1>
<table align=center cellspacing=20>
<tr><td>
 <h2>Feedback Form</h2>
 <table height=100>
 <%
    String email=(String)session.getAttribute("uid");
 %>
 <form action=feedaction.jsp method=post>
      <tr><td>Enter Name</td><td> <input type=text name=n placeholder="Enter name" required></td></tr>
      <tr><td>Enter Registered Email </td><td> <input type=email value="<%=email %>" readonly></td></tr>
      <tr><td colspan=2> <textarea name=f row=10
placeholder="Enter feedback..." required></textarea></td></tr>
      
      <tr><td><input type=submit value=Submit></form></td><td></td></tr>
    </table></td><td><img src=feed.png width=460 height=400></td></tr></table>
  <br>
  <br>
  <hr color=red size=10>
</body>
</html>