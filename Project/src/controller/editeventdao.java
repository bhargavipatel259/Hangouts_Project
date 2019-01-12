package controller;

import java.sql.DriverManager;

public class editeventdao {
	public String storevalues(createventbean c) {
		String title = c.gettitle();
		String description = c.getdescription();
		String email = c.getemail();	
String hangout_id = c.gethangout_id();
		String day = c.getday();
		String month = c.getmonth();
		String year = c.getyear();
		String time = c.gettime();
		String radio = c.getcate_name();
		String venue = c.getvenue();
		String profilepic = c.getprofilepic();
		java.sql.Connection con = null;
		java.sql.PreparedStatement statement = null;
		java.sql.ResultSet resultSet = null;
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
			statement = con.prepareStatement("UPDATE event_details SET name=?, organizer_email=?, cate_id=?,img=?, day=?, month=?, year=?, time=?, venue=?,  description=? where hangout_id=?");
			statement.setString(1, title);
			statement.setString(2, email);
			statement.setString(3, radio);
			statement.setString(4, profilepic);
			statement.setString(5, day);
			statement.setString(6, month);
			statement.setString(7, year);
			statement.setString(8, time);
			statement.setString(9, venue);
			statement.setString(10, description);
			statement.setString(11, hangout_id);

			


			


			statement.executeUpdate();
			System.out.println("succ");
			return "SUCCESS";
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return "Edit profile unsuccessful";
	}
	

	

}

		