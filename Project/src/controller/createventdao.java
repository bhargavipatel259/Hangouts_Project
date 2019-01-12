package controller;

import java.sql.DriverManager;
import java.sql.SQLException;
import controller.createventbean;

public class createventdao {
	public String storevalues(createventbean c) {
		String title = c.gettitle();
		String description = c.getdescription();
		String email = c.getemail();	

		String day = c.getday();
		String month = c.getmonth();
		String year = c.getyear();
		String time = c.gettime();
		String radio = c.getcate_name();
		String venue = c.getvenue();
		String profilepic = c.getprofilepic();
		java.sql.Connection con = null;
		java.sql.PreparedStatement ps = null;
		java.sql.Statement statement = null;

		java.sql.ResultSet resultSet = null;

		

		try {
			System.out.println("daoenter");

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
			statement = con.createStatement();
			resultSet = statement.executeQuery("select category_id from categories where category_name='"+radio+"'");
			while(resultSet.next())
			{
				System.out.println("query1");

				String cate_iddb = resultSet.getString("category_id");
				System.out.println("cate_iddb");
				System.out.println(cate_iddb);
				{
			
					System.out.println("q2");

					String sql = "insert into event_details(name,description,organizer_email,cate_id,img,day,month,year,time,venue) values (?,?,?,?,?,?,?,?,?,?)";
						ps = con.prepareStatement(sql);
						ps.setString(1,title);
							ps.setString(2,description);
							ps.setString(3,email);
							ps.setString(4,cate_iddb);
								ps.setString(5,profilepic);
								ps.setString(6,day);
									ps.setString(7,month);
											ps.setString(8,year);
											ps.setString(9,time);
											ps.setString(10,venue);
			
				}






		
			
			int i = ps.executeUpdate();
			if(i!=0) 
				return "SUCCESS";
			
			
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	return "event not created";
	}
	

}
