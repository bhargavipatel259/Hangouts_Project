package com.model.divy;

import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.Part;

import bean.EventReportBean;

public class ViewAllEventReportDao {

public List<EventReportBean> viewreports(String email){

	List<EventReportBean> list = new ArrayList<EventReportBean>(); 
    try
    {    
        Db_Connection dbconn=new Db_Connection();
        Connection conn= dbconn.Connection();
        
        String sqlString = "SELECT * FROM eventreport WHERE email = '"+email+"'";
        Statement myStatement = conn.createStatement();
    	ResultSet rs=myStatement.executeQuery(sqlString);
     
    	
        while (rs.next()) 
        {
        	
           EventReportBean e = new EventReportBean();
     	   Blob filep = rs.getBlob("file");
     	   long size = ((Blob) filep).length();
     	   String filename=rs.getString("filename");
     	   
     	   
     	   e.setFile(filep);
     	   e.setText(rs.getString("text"));
     	   //e.setFilesize(size);
     	   e.setEventid(rs.getInt("eventid"));
     	   System.out.println("event ids from ViewAllEventReportDaofile---"+rs.getInt("eventid"));
     	   e.setTitle(rs.getString("title"));
     	   e.setFilename(filename);
     	   list.add(e);
     	   /* file = rs.getBlob("file");
            fileData = file.getBytes(1,(int)file.length()); */
        } 
       
    conn.close();        
    } catch (SQLException ex) {Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);} 
    return list;
	
}
}