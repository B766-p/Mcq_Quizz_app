<%
	String utype = (String) session.getAttribute("utype");
	if(!("admin".equals(utype))) {
		response.sendRedirect("login.html");
	}
%>

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
	body{background-image:url('img1.jpg');background-repeat:no-repeat;background-size: cover;background-attachment: fixed;}
	input{font-weight:bolder;border-radius:10px;}
	td{font-weight:bolder;}
	#b{color:yellow;background:black;border-radius:10px;text-align:center;}
	#b:hover{color:blue;background:black;}
	table{width:400px;height:200px;border:5px solid black;}
</style>
</head>
<body>
<h1 align=center>Online MCQ App</h1>
<h2 align=center>Add Questions</h2>
<form action=addqueaction.jsp>
<table align=center>
		<tr><td>Choose Subject Code</td>
		<td><select name=sc>
				<option>J001</option>
				<option>C002</option>
				<option>P003</option>
				<option>A004</option>
		</select></td></tr>
       	<tr><td>Enter Question</td><td><textarea name=q rows=5 cols=21 placeholder="Enter Question" required></textarea></td></tr>
      	<tr><td>Enter Option 1</td><td><input type=text name=o1 placeholder="Enter option1" required></td></tr>
       	<tr><td>Enter Option 2</td><td><input type=text name=o2 placeholder="Enter option2" required></td></tr>
       	<tr><td>Enter Option 3</td><td><input type=text name=o3 placeholder="Enter option3" required></td></tr>
       	<tr><td>Enter Option 4</td><td><input type=text name=o4 placeholder="Enter option4" required></td></tr>
       	<tr><td>Enter Answer</td><td><input type=text name=a placeholder="Enter Answer" required></td></tr>
		<tr><th colspan=2><input id=b type=submit value="Add Questions"></th></tr>
</form>
</body>
</html>