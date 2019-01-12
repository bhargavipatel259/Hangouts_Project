package dao;

import java.sql.DriverManager;

import bean.editprofilebean;
import bean.signupbean;

public class editprofiledao {
		public String storevalues(editprofilebean s) {
			String firstname = s.getfirstname();
			String lastname = s.getlastname();
			String profilepic = s.getprofilepic();
			String email= s.getemail();
			java.sql.Connection con = null;
			java.sql.PreparedStatement statement = null;
			java.sql.ResultSet resultSet = null;
						
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
				statement = con.prepareStatement("UPDATE user_details SET firstname=?, lastname=?, profile_pic=? where email=?");
				statement.setString(1, firstname);
				statement.setString(2, lastname);
				statement.setString(3, profilepic);
				statement.setString(4, email);
				statement.executeUpdate();
				return "SUCCESS";
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		return "Edit profile unsuccessful";
		}
		

		

}
