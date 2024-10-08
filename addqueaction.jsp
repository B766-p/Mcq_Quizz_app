<%@page import="mcqapp.DBcon"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online MCQ App</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%
     String scode=request.getParameter("sc");
     String qt=request.getParameter("q");
     String op1=request.getParameter("o1");
     String op2=request.getParameter("o2");
     String op3=request.getParameter("o3");
     String op4=request.getParameter("o4");
     String ans=request.getParameter("a");
     int n;
     out.println("scode="+scode);
     try
     {
    	 Connection con=DBcon.getCon();
    	 PreparedStatement ps=con.prepareStatement("select qno from mque order by qno desc");
         ResultSet rs=ps.executeQuery();
         if(rs.next())
          n=rs.getInt(1)+1;
		else
          n=1;   
         PreparedStatement p=con.prepareStatement("insert into mque values(?,?,?,?,?,?,?,?)");
         p.setInt(1,n);
         p.setString(2,scode);
         p.setString(3,qt);
         p.setString(4,op1);p.setString(5,op2);p.setString(6,op3);p.setString(7,op4);
         p.setString(8,ans);
         int r=p.executeUpdate();
         if(r>=1)
           response.sendRedirect("addque.jsp");
           //out.println("Done");
        con.close();
     }
     catch(Exception e)
     {
    	 out.println(e);
     }
%>
</body>
</html>