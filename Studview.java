package mcqapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Studview {
	public String getInfo(String student )
	{
		String res="";
		try
		{
			Connection con=DBcon.getCon();
			PreparedStatement ps=con.prepareStatement("select * from userinfo where utype=?");
			ps.setString(1, student);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				res=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return res;
	}

}
