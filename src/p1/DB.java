package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DB {

	public static void main(String[] args) {
		DB.getCon();
	}
	
	public static Connection getCon()
	{
		Connection conn=null;
		Statement stmt=null;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bank", "bank");
			System.out.println("Connected");
			 
		}catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);
		}return conn;
	}

}
