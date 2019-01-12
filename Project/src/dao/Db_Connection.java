package dao;
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
	            Connection myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
	            //String sql = "insert into eventreport(email,eventid,file,text,images) values (?,?,?)";
				//ps = con.prepareStatement(sql);
				
				return myConnection;
	        } catch (ClassNotFoundException | SQLException ex) {Logger.getLogger(Db_Connection.class.getName()).log(Level.SEVERE, null, ex);}
	        return null;
	    }
	}
