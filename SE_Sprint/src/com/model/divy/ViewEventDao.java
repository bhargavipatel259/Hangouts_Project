package com.model.divy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.math.*;

import javax.servlet.http.HttpSession;

import bean.Eventbean;
import bean.loginbean;
import com.controller.divy.EditServlet;

public class ViewEventDao {
	
	public List<Eventbean> getAllEvents(String email){
		
		List <Eventbean> list = new ArrayList<Eventbean>();
		java.sql.Connection con = null;
		java.sql.PreparedStatement ps = null;
		
		System.out.println("----------email-------"+ email);
		try {			
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:9050/ualbanyhangouts", "root", "root");
		String sqlp = "SELECT * FROM ualbanyhangouts.event where email=?";
		ps = con.prepareStatement(sqlp);
		ps.setString(1,email);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()){
		Eventbean e = new Eventbean();
		e.setTitle(rs.getString("title"));
		e.setTextpart(rs.getString("textpart"));
		e.setSpeaker(rs.getString("speaker"));
		e.setSpeakerinfo(rs.getString("speakerinfo"));
		e.setVenue(rs.getString("venue"));
		e.setDate(rs.getString("date"));
		e.setEventid(rs.getInt("eventid"));
		try{
			String p= (String) rs.getString("time");// 12:12:12
			String[] parts = p.split(":"); //returns an array with the 2 parts
			String firstPart = parts[0];
			String secondPart =parts[1]; 
			String tim = (firstPart +":"+secondPart) ;
			System.out.println("Time---------"+firstPart + secondPart + tim);
			e.setTime(tim);
		}
		catch(Exception u){System.out.println("Exception"+u);}
		
		System.out.println("list item"+ e.getTitle());
		list.add(e);
		}
		con.close();
		}
		catch(Exception e){e.printStackTrace();}
		return list;
		}

	public List<Eventbean> getEvent(int id){
		
		List <Eventbean> list = new ArrayList<Eventbean>();
		java.sql.Connection con = null;
		java.sql.PreparedStatement ps = null;
		
		try {			
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:9050/ualbanyhangouts", "root", "root");
		String sqp = "SELECT * FROM ualbanyhangouts.event where eventid=?";
		ps = con.prepareStatement(sqp);
		ps.setInt(1,id);
		System.out.println(id+"-----------------id------------------");
		Eventbean e = new Eventbean();
		ResultSet rs = ps.executeQuery();
		
     	while(rs.next()){
     	
		String title= rs.getString("title");
		String textpart= rs.getString("textpart");
		String speaker = rs.getString("speaker");
		String speakerinfo = rs.getString("speakerinfo");
		String venue = rs.getString("venue");
		String date= rs.getString("date");
		String time =rs.getString("time");
		int eventid = id;
		
		e.setDate(date);
		e.setSpeaker(speaker);
		e.setSpeakerinfo(speakerinfo);
		e.setTextpart(textpart);
		e.setTime(time);
		e.setTitle(title);
		e.setVenue(venue);
		e.setEventid(eventid);
		list.add(e);
		con.close();
		
		}
		}
		catch(Exception p){p.printStackTrace();}
		return list;
	}
	}