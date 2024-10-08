package mcqapp;
import java.util.*;
import java.sql.*;
import java.util.ArrayList;


public class LoadQue {
	public ArrayList que()
	{
		ArrayList <Question>q=new ArrayList();
		Question ob;
		  try
	     {
	    	 Connection con=mcqapp.DBcon.getCon();
	          PreparedStatement ps=con.prepareStatement("select * from mque");
	          ResultSet rs=ps.executeQuery();
	          int i=0;
	          while(rs.next())
	          {
	        	  ob=new Question();
	      		  ob.setScode(rs.getString(2));
	        	  ob.setQt(rs.getString(3));
	        	  ob.setOp1(rs.getString(4));
	        	  ob.setOp2(rs.getString(5));
	        	  ob.setOp3(rs.getString(6));
	        	  ob.setOp4(rs.getString(7));
	        	  ob.setAns(rs.getString(8));
	        	  q.add(ob);
	          }
	             con.close();
	     }
	     catch(Exception e)
	     {
	        System.out.println(e);
	     }
		  
		  return q;
	}

}