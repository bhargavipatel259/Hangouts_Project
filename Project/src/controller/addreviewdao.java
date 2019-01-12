package controller;

import java.sql.DriverManager;

public class addreviewdao {
	public String authenticateUser(likeeventbean l) {
		String hangout_id = l.gethangout_id() ;
		String email = l.getemail();
		String review = l.getreview();
		
		java.sql.Connection con = null;
		java.sql.Statement statement = null;
		java.sql.ResultSet resultSet = null;
		
		java.sql.PreparedStatement ps = null;
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
				
			
			String sql = "insert into review(email,review,hangout_id) values (?,?,?)";
			ps = con.prepareStatement(sql);
			
			
			ps.setString(1,	email);
			ps.setString(2,	review);

			ps.setString(3, hangout_id);
			
			int i = ps.executeUpdate();
			if(i!=0) 
				return "SUCCESS";
}
		catch(Exception e) {
			e.printStackTrace();
		}
		return "review already is in database";


}
}

