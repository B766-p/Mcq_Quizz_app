
<%@page import="mcqapp.StoreResult"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Online MCQ APP</h1><hr color=red>
    <h2>Test Result</h2><br>
  <table align=center><tr><td>  
<table align=center width=400>
<tr><th><hr color=blue>SCORE CARD<hr color=blue></th></tr>
<%
    String uid=(String)session.getAttribute("uid");
    String res=(String)session.getAttribute(uid+"res");
    int qn=Integer.parseInt((String)session.getAttribute(uid+"q"));
    int tqn=Integer.parseInt(res);
    float per=((float)(tqn/2)/qn)*100;
    out.println("<tr><th>Your score is: "+res+"</th></tr>");
    out.println("<tr><th><font color=red><b>Your Percentage score: "+per+" %</b></font></th></tr>");
    out.println("<tr><th>Questions Attempted: "+qn+"</th></tr>");
    out.println("<tr><th>Total Correct Questions: "+(tqn/2)+"</th></tr>");
 %>
<tr><th><hr color=blue>Congratulations!<hr color=blue></th></tr>
<tr><th><input type="button" value=Print onclick="window.print()"></th></tr>
</table></td><td>
<%
String c="None";
if(per>=80.0){
	out.println("<img src=gold.jpg>"); c="Gold";}
else if(per>=40.0 && per<80.0){
	out.println("<img src=silver.jpg>"); c="Silver";}
else if(per<40.0){
	out.println("<img src=bronze.jpg>"); c="Bronze";}
StoreResult ob=new StoreResult();
ob.saveRes(uid, tqn, per+"", c);
%>
</td></table>
<a href=feedback.jsp>Feedback</a>
</body>
</html>