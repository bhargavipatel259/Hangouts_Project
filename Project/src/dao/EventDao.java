package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.Date;

import bean.Eventbean;

public class EventDao {
	String url = "jdbc:mysql://localhost:3306/ualbanyhangouts";
	String username= "icsi518";
	String password= "secretICSI518";
    String sav = "insert into ualbanyhangouts.event(email,title,textpart,rep,speaker,speakerinfo,venue) values(?,?,?,?,?,?,?)";
		
public void save(Eventbean e){
	
			String email = e.getEmail();;
			String title = e.getTitle();
			String textpart= e.getTextpart();
			String rep = e.getRep();
			String speaker=e.getSpeaker();
			String speakerinfo = e.getSpeakerinfo();
			String venue= e.getVenue();
				
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
			st.setString(4, rep);
			st.setString(5, speaker);
			st.setString(6, speakerinfo);
			st.setString(7, venue);
			st.executeUpdate();
			con.close();	
		}
		catch(Exception l){
			l.printStackTrace();
		}
		
}}
