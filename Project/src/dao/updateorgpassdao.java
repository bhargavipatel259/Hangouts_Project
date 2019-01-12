package dao;
import java.sql.DriverManager;

import controller.updatepassbean;

public class updateorgpassdao {
	public String storevalues(updatepassbean s) {
		String newpassword = s.getnewpassword();
		String oldpassword = s.getoldpassword();

		String email = s.getemail();
		java.sql.Connection con = null;
		java.sql.Statement statement = null;
		java.sql.ResultSet resultSet = null;
		java.sql.Statement statement1 = null;
		java.sql.ResultSet resultSet1 = null;
		String passworddb=null;
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
			statement = con.createStatement();
			resultSet = statement.executeQuery("select * from organizer_details where email ='"+email+"'");
			if(resultSet.next())
			{
				passworddb = resultSet.getString("pwd");

				if(oldpassword.equals(passworddb)) 
					{
						statement1 = con.createStatement();
						int i = statement1.executeUpdate("update organizer_details set pwd='"+newpassword+"' where email='"+email+"'");
				
						return "SUCCESS";
					}
					else {
						return "Old password does not match";
					}
					
				}
			
		}

			
		catch(Exception e) {
			e.printStackTrace();
		}
	return "Update password";
	}
	

	

}
