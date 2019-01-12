package dao;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.*;
import java.util.Base64;

import bean.loginbean;
import util.dbconnection;


public class logindao {
public String authenticateUser(loginbean l)
{
	String email = l.getemail();
	String pass = l.getpassword();
	String radio = l.getradio();
	
	
	java.sql.Connection con = null;
	java.sql.Statement statement = null;
	java.sql.ResultSet resultSet = null;
	
	String emaildb = null;
	String passworddb = null;
	String firstname = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
		statement = con.createStatement();
		resultSet = statement.executeQuery("select * from "+radio+"_details");

		while(resultSet.next())
		{
			emaildb = resultSet.getString("email");
			passworddb = resultSet.getString("pwd");
			firstname = resultSet.getString("firstname");
			l.setfirstname(firstname);
			if(email.equals(emaildb) && pass.equals(passworddb)) {
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
