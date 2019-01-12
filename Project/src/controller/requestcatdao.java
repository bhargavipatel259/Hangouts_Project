package controller;

import java.sql.DriverManager;

public class requestcatdao {
	public String storevalues(createventbean c) {
		String title = c.gettitle();
		String description = c.getdescription();
		String email = c.getemail();	

		java.sql.Connection con = null;
		java.sql.PreparedStatement ps = null;


		

		try {
			System.out.println("daoenter");

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
			String sql = "insert into request_category(category_name,description,organizer_email) values (?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1,title);
			ps.setString(2,description);
			ps.setString(3,email);

			int i = ps.executeUpdate();
			if(i!=0) 
				return "SUCCESS";
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return "Emailaddress already in use";
	}
	

}
