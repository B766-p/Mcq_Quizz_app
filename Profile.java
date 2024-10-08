package mcqapp;
import java.sql.*;

public class Profile {
	public String getInfo(String email)
	{
		String res="";
		try
		{
			Connection con=DBcon.getCon();
			PreparedStatement ps=con.prepareStatement("select * from userinfo where email=?");
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				res=rs.getString(2)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return res;
	}

}
