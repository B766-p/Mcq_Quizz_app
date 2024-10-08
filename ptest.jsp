<%@page import="mcqapp.Question"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online MCQ App</title>
</head>
<body onload=tstart()>
<h1>Online MCQ APP</h1><hr color=red>
    <h2>Test</h2>
    <table align=center width=500>
    <tr><th><hr color=yellow><hr color=blue></th></tr>
<%

     String uid=(String)session.getAttribute("uid");
     String res=(String)session.getAttribute(uid+"res");
     int qn=Integer.parseInt((String)session.getAttribute(uid+"q"));
     java.util.ArrayList que=(ArrayList)session.getAttribute(uid+"que");
     if(qn==que.size())
    	 response.sendRedirect("finish.jsp");
     out.println("<tr><th align=right>Result="+res+"</th></tr>");
     out.println("<tr><th><hr color=blue><hr color=yellow></th></tr>");
      out.println("<form action=checkres.jsp>");
      Question ob=null;
     if(qn<que.size())
        {
    	 ob=(Question)que.get(qn);
    	 out.println("<tr><td align=right><b>Time Left:<input type=number  style=border:0px;width:30px; id=t readonly> Sec.</b></td></tr>");
      out.println("<tr><td><b>"+ob.getQt()+"</b></td></tr>");
      %>
      <script>
           t=60
           function tstart()
           {
        	   document.getElementById('t').value=t
        	   t--;
        	   if(t==0)
        		   window.location.href="ptest.jsp";
        	   setTimeout("tstart()",1000)
           }
      </script>
      <tr><td><b><input type=radio name=op value="<%=ob.getOp1()%>"><%= ob.getOp1()%></b></td></tr>
      <tr><td><b><input type=radio name=op value="<%= ob.getOp2()%>"><%= ob.getOp2()%></b></td></tr>
      <tr><td><b><input type=radio name=op value="<%= ob.getOp3()%>"><%= ob.getOp3()%></b></td></tr>
      <tr><td><b><input type=radio name=op value="<%= ob.getOp4()%>"><%=ob.getOp4()%></b></td></tr>
       <% 
         out.println("<tr><td align=right><input type=submit value=Next></form></td></tr>");
    	 qn++;
         session.setAttribute(uid+"q",qn+"");
     }
%>
 <tr><th><hr color=yellow><hr color=blue></th></tr>
 <tr><th>All The Best!!</th></tr>
 <tr><th><hr color=blue><hr color=yellow></th></tr>
       </table>

</body>
</html>