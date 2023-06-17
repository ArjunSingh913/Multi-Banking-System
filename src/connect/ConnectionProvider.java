package connect;
import java.io.FileInputStream;
import java.sql.*;
import java.util.Properties;

public class ConnectionProvider
{

	private static Connection con=null;
	private static Statement st;
	private static String user;
	private static String password;
	private static String driver;
	private static String url;
	
	
		public static void load(String path)
		{
			
			try
			{
			path=path+"\\"+"db.properties";
			FileInputStream fin=new FileInputStream(path);
			Properties p=new Properties();
			p.load(fin);
			user=p.getProperty("user");
			password=p.getProperty("password");
			driver=p.getProperty("driver");
			url=p.getProperty("url");
			System.out.println("after load");
			System.out.println(user);
			System.out.println(url);
			System.out.println(password);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	
	
		public static synchronized Connection getConnection()
		{
			try
			{

			if(con == null)
			{
				System.out.println("inside if");	
		Class.forName(driver);
		System.out.println("after loading driver");	
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mca6");

		System.out.println("Connecitn ..........."+con);
				return con;
			}

			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return con;
		}
}