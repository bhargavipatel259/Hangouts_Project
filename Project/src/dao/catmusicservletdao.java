package dao;

import java.sql.*;

import bean.catmusicservletbean;

public class catmusicservletdao {
		public String authenticateUser(catmusicservletbean l)
		{
			String categoryiddb = null;
			String category = l.getcategory();
			String email = l.getemail();
			java.sql.Connection con = null;
			java.sql.Statement statement = null;
			java.sql.ResultSet resultSet = null;
			
			java.sql.PreparedStatement ps = null;
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
					
				
				String sql = "insert into interested_category(email,category_id) values (?,?)";
				ps = con.prepareStatement(sql);
				
				
				ps.setString(1,	email);
				ps.setString(2, category);
				
				int i = ps.executeUpdate();
				if(i!=0) 
					return "SUCCESS";
}
			catch(Exception e) {
				e.printStackTrace();
			}
			return "Category already is in interested field";


}
}