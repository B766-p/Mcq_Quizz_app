package mcqapp;


import java.sql.*;
public class StoreResult {
	public void saveRes(String email,int score, String per,String ctype)
	{
		try
		{
			Connection con=mcqapp.DBcon.getCon();
			PreparedStatement ps=con.prepareStatement("insert into resreport values(?,?,sysdate,?,?)");
			ps.setString(1, email);
			ps.setInt(2,score);
			ps.setString(3, per);
			ps.setString(4,ctype);
			ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
