package controller;

import java.sql.DriverManager;

public class deletehangoutdao {
	public String authenticateUser(likeeventbean l) {
		String hangout_id = l.gethangout_id() ;
		System.out.println(hangout_id);
		java.sql.Connection con = null;
		java.sql.Statement statement = null;
		java.sql.ResultSet resultSet = null;
		
		java.sql.PreparedStatement ps = null;
		
		try {
			System.out.println("a");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
				
			
			String sql = "delete from event_details where hangout_id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,	hangout_id);

			System.out.println("aa");

			
			System.out.println("aaaa");

			int i = ps.executeUpdate();
			System.out.println("dcs"+i);
			if(i!=0) {
				System.out.println("ssa");

				return "SUCCESS";
}}
		catch(Exception e) {
			e.printStackTrace();
		}
		return "event not in database";


}
}


