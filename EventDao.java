package com.model.divy;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.Date;

import javax.servlet.http.Part;

import bean.Eventbean;

public class EventDao {
	static String url = "jdbc:mysql://localhost:9050/ualbanyhangouts";
	static String username= "root";
	static String password="root";
    
	static String sav = "insert into ualbanyhangouts.event(email,title,textpart,rep,speaker,speakerinfo,venue,date,time) values(?,?,?,?,?,?,?,?,?)";	

	static String updat = "update ualbanyhangouts.event set title = ?, textpart = ?, speaker=?, speakerinfo=?, venue=?, date=?, time=?  where eventid= ?";
	//update ualbanyhangouts.event set title='Hello from mysql', textpart = 'Changed everything',speaker='myself', speakerinfo= 'oops', venue='home',date='2018-05-04',time ='5:30:00'  where eventid='10';
	
	static String del= "delete from ualbanyhangouts.event where eventid = ?";
	
	public void save(Eventbean e, InputStream inputstream){
		Blob b = null ;
			String email = e.getEmail();;
			String title = e.getTitle();
			String textpart= e.getTextpart();
			Blob rep = b;
			String speaker=e.getSpeaker();
			String speakerinfo = e.getSpeakerinfo();
			String venue= e.getVenue();
			String date =e.getDate();
			String time =e.getTime();
			
			
	try
		 {
			System.out.println("connection try");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sav);
			System.out.println("connection happen and assign string");
			
			st.setString(1, email);
			st.setString(2, title);
			st.setString(3, textpart);
			if (inputstream != null) {
		        // fetches input stream of the upload file for the blob column
				st.setBlob(4,inputstream);
		        System.out.println("photo saved");
		    	}
			else{st.setBlob(4,b);}
			st.setString(5, speaker);
			st.setString(6, speakerinfo);
			st.setString(7, venue);
			st.setString(8, date);
			st.setString(9, time);
			st.executeUpdate();
			con.close();	
		}
		catch(Exception l){
			l.printStackTrace();
		}

}	

public void update(Eventbean e){
	//int status=0;
	//String email = e.getEmail();;
	int eventid =e.getEventid();
	System.out.println("event id from eventdao"+eventid);
	String title = e.getTitle();
	String textpart= e.getTextpart();
//	Blob rep = e.getRep();
	String speaker=e.getSpeaker();
	String speakerinfo = e.getSpeakerinfo();
	String venue= e.getVenue();
	String date =e.getDate();
	String time =e.getTime();
	
	try
 {
	System.out.println("connection try");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,password);
	PreparedStatement st = con.prepareStatement(updat);
	System.out.println("connection happen and assign string");
	
	//String updat = "update ualbanyhangouts.event set title = ?, textpart = ?, rep=?, speaker=?, speakerinfo=?, venue=?, date=?, time=?  where id=?";
	//st.setString(1, email);
	Blob b= null;
	st.setString(1, title);
	st.setString(2, textpart);
	st.setBlob(3,b);
	st.setString(4, speaker);
	st.setString(5, speakerinfo);
	st.setString(6, venue);
	st.setString(7, date);
	st.setString(8, time);
	st.setInt(9, eventid);
	
	//st.setInt(10, eventid);
System.out.println("event updated!!----------------------");	
System.out.println("id"+eventid);
System.out.println("title"+ title);
System.out.println("textpart"+textpart);
System.out.println("speaker"+speaker);
System.out.println("speaker info"+ speakerinfo);
System.out.println("date"+date);
System.out.println("time"+time);

 st.executeUpdate();
	con.close();	
}
catch(Exception l){
	l.printStackTrace();
}
//return status;
}


public static void delete (int eventid){
Eventbean e =new Eventbean();

try{
	
	System.out.println("connection try");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url ,username, password);
	PreparedStatement st = con.prepareStatement(del);
	System.out.println("connection happen and assign string");

	PreparedStatement ps = con.prepareStatement(del);
	ps.setInt(1,eventid);
	ps.executeUpdate();
System.out.println("Event Deleted");
con.close();
}
catch (Exception p){p.printStackTrace();}

}

public void retrieve(){
	try{
		
		System.out.println("connection try");
		Class.forName("com.mysql.jdbc.Driver");
		String champ="SELECT * FROM ualbanyhangouts.categories";
		Connection con = DriverManager.getConnection(url ,username, password);
		
		PreparedStatement st = con.prepareStatement(champ);
		System.out.println("connection happen and assign string");
		st.executeQuery();
	
		System.out.println("Event categories!!!");
		con.close();
	}
	catch (Exception p){p.printStackTrace();}


	

	
	
}
}
	