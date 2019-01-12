package controller;

import java.sql.DriverManager;

public class reporteventdao {
	public String authenticateUser(likeeventbean l) {
		String hangout_id = l.gethangout_id() ;
		String email = l.getemail();
		java.sql.Connection con = null;
		java.sql.Statement statement = null;
		java.sql.ResultSet resultSet = null;
		
		java.sql.PreparedStatement ps = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
				
			
			String sql = "insert into report_event(user_email,hangout_id) values (?,?)";
			ps = con.prepareStatement(sql);
			
			
			ps.setString(1,	email);
			ps.setString(2, hangout_id);
			
			int i = ps.executeUpdate();
			if(i!=0) 
				return "SUCCESS";
}
		catch(Exception e) {
			e.printStackTrace();
		}
		return "report already is in database";


}
}
