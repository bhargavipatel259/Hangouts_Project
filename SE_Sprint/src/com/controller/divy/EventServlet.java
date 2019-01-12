package com.controller.divy;

import java.io.IOException;
//import java.util.Date;
import java.io.InputStream;
import java.sql.Blob;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.model.divy.EditProfileDao;
import com.model.divy.EventDao;

import bean.Eventbean;
import bean.loginbean;


@WebServlet("/EventServlet")
@MultipartConfig(maxFileSize = 16177215)
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EventServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String textpart = request.getParameter("textpart");
		String checkboxa = request.getParameter("checkboxa");
		String checkboxb = request.getParameter("checkboxb");
		String checkboxc = request.getParameter("checkboxc");
		String checkboxd = request.getParameter("checkboxd");
		String checkboxe = request.getParameter("checkboxe");
		String checkboxf = request.getParameter("checkboxf");
		String checkboxg = request.getParameter("checkboxg");
		//eventphoto		
		
		HttpSession session = request.getSession();
	   
        String date = request.getParameter("dats");
        String time = request.getParameter("tims");
		String speaker = request.getParameter("speaker");
		String speakerinfo = request.getParameter("speakerinfo");
		String venue = request.getParameter("venue");
		String email= (String) session.getAttribute("email");
		System.out.println("------email--------"+email);
		
		InputStream inputStream = null; 
		
        Part cv = request.getPart("eventphoto");
                
        if (cv != null) {
            System.out.println(cv.getName());
            System.out.println(cv.getSize());
            System.out.println(cv.getContentType());
        }
            inputStream = cv.getInputStream();
            if(inputStream == null){response.sendRedirect("Event.jsp?Again upload image");}

                  //dao.upload(inputStream, l);
		
//		if((checkboxa)=="" || (checkboxa)== null)
//			{rep= checkboxa;}	
//		if((checkboxb)=="" || (checkboxb)== null)
//			{rep = checkboxb;}
//		if((checkboxc)=="" || (checkboxc)== null)
//			{ rep = checkboxc;}
//		
//            Blob rep= (Blob) cv;
            
		Eventbean e = new Eventbean();
		e.setTitle(title);
		e.setTextpart(textpart);
//		e.setB(rep);
		e.setEmail(email);
		e.setSpeaker(speaker);
		e.setSpeakerinfo(speakerinfo);
		e.setVenue(venue);
		e.setTime(time);
		e.setDate(date);
		
try{
  	EventDao pao = new EventDao();
    pao.save(e, inputStream);
    response.sendRedirect("Event.jsp?pass=Event Created");
   		}
catch(Exception d){
	response.sendRedirect("Event.jsp?error=Again Create Event");
	d.printStackTrace();
		}
		}
	}
	