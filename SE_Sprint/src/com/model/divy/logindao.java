package com.model.divy;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.*;
import java.util.Base64;

import bean.loginbean;
import dB.dbconnection;


public class logindao {
public String authenticateUser(loginbean l)
{
	String email = l.getEmail();
	String password = l.getPassword();
	String radio = l.getRadio();
	
	System.out.println("email from login dao------------------------"+ email);
	System.out.println("password from login dao------------------------"+password);
	System.out.println("radio from login dao------------------------"+radio);
	
	java.sql.Connection con = null;
	java.sql.Statement statement = null;
	java.sql.ResultSet resultSet = null;
	
	String emaildb = null;
	String passworddb = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:9050/ualbanyhangouts", "root", "root");
		statement = con.createStatement();
		resultSet = statement.executeQuery("select * from "+radio+"_details");

		while(resultSet.next())
		{
			emaildb = resultSet.getString("email");
			passworddb = resultSet.getString("password");
			
			if(email.equals(emaildb) && password.equals(passworddb)) {
				return "SUCCESS";
			}
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return "Invalid user credintials";
	
	}

	
	

}
