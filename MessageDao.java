package com.model.divy;
import java.sql.DriverManager;
import bean.loginbean;
public class MessageDao {
	public int Message(String email, String title, String Message)
		{
		int i=0;
			System.out.println("Mesaage Dao"+ email + title + Message);
			java.sql.Connection con = null;
			java.sql.Statement statement = null;
			java.sql.ResultSet resultSet = null;
			java.sql.PreparedStatement ps = null;
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:9050/ualbanyhangouts", "root", "root");
				statement = con.createStatement();
				String sql ="insert into ualbanyhangouts.messageforadmin(email, Message, title) values (?,?,?)";
				ps = con.prepareStatement(sql);
				ps.setString(1,email);
				ps.setString(2,Message);
				ps.setString(3,title);
				i= ps.executeUpdate();
				con.close();
				return i;
				
				}catch (Exception e)
			    {e.printStackTrace();
			    return i;}	
}
}