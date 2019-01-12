package dao;
import java.sql.*;
import bean.catdivbean;
import bean.catmusicservletbean;

public class catdivdao {
	public String authenticateUser(catdivbean c) {

	String event = c.getevent();
	System.out.println(event);
	String day = null;
	String month = null;
	String year = null;
	String img = null;
	String name = null;
	
	java.sql.Connection con = null;
	java.sql.Statement statement = null;
	java.sql.ResultSet resultSet = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
		statement = con.createStatement();
		resultSet = statement.executeQuery("select * from event_details where cate_id="+event+"");

		while(resultSet.next())
		{
			
			name = resultSet.getString("name");
			img = resultSet.getString("img");
			day = resultSet.getString("day");
			month = resultSet.getString("month");
			year = resultSet.getString("year");
				
			return "SUCCESS";
			}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return "Invalid user credintials";
	

	}
}
