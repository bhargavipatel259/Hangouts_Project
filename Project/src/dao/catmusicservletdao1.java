package dao;

import java.sql.*;

import bean.catmusicservletbean1;

public class catmusicservletdao1 {
		public String authenticateUser(catmusicservletbean1 l)
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
					
				
				String sql = "delete from interested_category where email=? and category_id=?";
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
			return "Category not in interested field";


}
}