package com.model.divy;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Base64;

import bean.signupbean;

public class signupdao {
	public String storevalues(signupbean s) {
		String firstname = s.getfirstname();
		String lastname = s.getlastname();
		String email = s.getemail();
		String password = s.getpassword();
		String radio = s.getradio();
		java.sql.Connection con = null;
		java.sql.PreparedStatement ps = null;
		
		try {			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:9050/ualbanyhangouts", "root", "root");
			String sql = "insert into "+radio+"_details(firstname,lastname,email,password) values (?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1,firstname);
			ps.setString(2,lastname);
			ps.setString(3,email);
			ps.setString(4,password);
					
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
