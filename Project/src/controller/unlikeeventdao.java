package controller;

import java.sql.DriverManager;

public class unlikeeventdao {
	public String authenticateUser(likeeventbean l) {
		String hangout_id = l.gethangout_id() ;
		System.out.println(hangout_id);
		String email = l.getemail();
		System.out.println("beanget");
		java.sql.Connection con = null;
		java.sql.Statement statement = null;
		java.sql.ResultSet resultSet = null;
		
		java.sql.PreparedStatement ps = null;
		
		try {
			
			System.out.println("try");

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
				
			
			String sql = "delete from like_event where user_email=? and hangout_id=?";
			ps = con.prepareStatement(sql);
			System.out.println("query");

			
			ps.setString(1,	email);
			ps.setString(2, hangout_id);
			
			int i = ps.executeUpdate();
			if(i!=0) 
				return "SUCCESS";
}
		catch(Exception e) {
			e.printStackTrace();
		}
		return "like already is in database";


}
}
