package User;
//import static User.JdbcConnection;

import java.sql.*;

public class ConnectionProvider implements JdbcConnection{
	private static Connection con=null;  
	static {
		try {
			Class.forName(DRI);  
			con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
		}catch (Exception e) {
			System.out.println();
		}
	}
	
	public static Connection getCon() {
		return con;
	}
}
