package com.model.divy;
	import java.sql.*;
	import java.util.logging.Level;
	import java.util.logging.Logger;
	public class Db_Connection 
	{
	    public Connection Connection()
	    {
	    	java.sql.Connection con = null;
			java.sql.PreparedStatement ps = null;
	        try 
	        {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection myConnection = DriverManager.getConnection("jdbc:mysql://localhost:9050/ualbanyhangouts", "root", "root");
	            //String sql = "insert into eventreport(email,eventid,file,text,images) values (?,?,?)";
				//ps = con.prepareStatement(sql);
				
				return myConnection;
	        } catch (ClassNotFoundException | SQLException ex) {Logger.getLogger(Db_Connection.class.getName()).log(Level.SEVERE, null, ex);}
	        return null;
	    }
	}
