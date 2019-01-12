package util;

import java.sql.*;

public class dbconnection {
	public static Connection createConnection() {
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/ualbanyhangouts";
		String username = "icsi518";
		String password = "secretICSI518";
		
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
			}
			catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
			con = DriverManager.getConnection(url,username,password);
			System.out.println("Printing connection object"+con);
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return con;
	}
}
