package User;
import java.sql.*;
public class UserDatabase {
	
	static String DRI = "com.mysql.jdbc.Driver";
	static String CONNECTION_URL = "jdbc:mysql://localhost:3306/narsing?characterEncoding=latin1";
	static String USERNAME = "root";
	static String PASSWORD = "root";
	static Connection con = null;
	
	static {
		try {
			Class.forName(DRI);
			con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public static Connection getCon() {
		return con;
	}
	
	public static int register(String n,String p)
	{
		int stat = 0;
		try {
			System.out.println(con);
			String query = "insert into registration values(?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, n);
			ps.setString(2, p);

			stat = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.toString() + stat);
		}
		return stat;
	}
	
	public static boolean login(String n,String p) {
		boolean stat = false;
		try {
			String query = "select * from registration where userName=? and userPassword=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			stat = rs.next();
		} catch (Exception e) {
			System.out.println(e.toString() + stat);
		}
		return stat;
	}
	
	public static int updatePassword(String n,String p){
		int stat = 0;
		try {
			String query = "update registration set userPassword=? where userName=?";
			PreparedStatement ps  = con.prepareStatement(query);
			ps.setString(1, p);
			ps.setString(2,n);
			
			stat = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e.toString() + stat);
		}
		
		return stat;
	}
}
