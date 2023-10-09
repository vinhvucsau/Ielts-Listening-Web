package hcmute.DAO;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.jdbc.Driver;

public class DBConnection {
	private static String DB_URL ="jdbc:mysql://localhost:3306/banhang3";
	private static String USER_NAME ="root";
	private static String PASSWORD = "1234567890";
	private static Connection con ;
	
	public static Connection getConnection() throws IOException{
		con = null ;
		try {
			//driver register
			DriverManager.registerDriver(new Driver());
			con = (Connection) DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
		} catch (SQLException ex) {
			Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE,null,ex);
		}
		return (con) ;
	}
	
	public static void main(String[] args) {
		/*
		 * try { Connection c = getConnection();
		 * System.out.println(DBConnection.getConnection()); if(c== null) {
		 * System.out.println("something wrong"); } else { System.out.println("ok"); } }
		 * catch (Exception e) { e.printStackTrace(); }
		 */
		try {
			// connnect to database 'testdb'
			Connection conn = getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from Catetory");
			while (rs.next()) {
			System.out.println(rs.getInt(1) + " " + rs.getString(2) 
			+ " " + rs.getString(3));
			}
			conn.close();
			} catch (Exception ex) {
			ex.printStackTrace();
			}
	}
}
