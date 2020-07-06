package HMS.Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	public static Connection getMyConnetion()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/hms1","root","mohit");
		}
		catch(Exception e)
		{
			
		}
		return con;
	}
}
