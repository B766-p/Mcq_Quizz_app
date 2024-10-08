package mcqapp;
import java.sql.*;
public class DBcon {
	public static Connection getCon()
	{
		Connection con=null;
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","mcqapp","mcq123");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}


}
