package com.controller.divy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.divy.EventDao;

import bean.Eventbean;

@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateEventServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String textpart = request.getParameter("textpart");
		String checkboxa = request.getParameter("checkboxa");
		String checkboxb = request.getParameter("checkboxb");
		String checkboxc = request.getParameter("checkboxc");
		String rep= "";
		
		HttpSession session = request.getSession();
	   
        String date = request.getParameter("dats");
        String time = request.getParameter("tims");
		String speaker = request.getParameter("speaker");
		String speakerinfo = request.getParameter("speakerinfo");
		String venue = request.getParameter("venue");
		String email= (String) session.getAttribute("email");
		int eventid = (int) session.getAttribute("eveid");
			
		System.out.println("--------------Int id"+ eventid);
		
		System.out.println("------email--------"+email);
		
		if((checkboxa)=="" || (checkboxa)== null)
			{rep= checkboxa;}	
		if((checkboxb)=="" || (checkboxb)== null)
			{rep = checkboxb;}
		if((checkboxc)=="" || (checkboxc)== null)
			{ rep = checkboxc;}
		
		
		Eventbean e = new Eventbean();
		e.setEventid(eventid);
		e.setTitle(title);
		e.setTextpart(textpart);
//		e.setRep(rep);
		e.setEmail(email);
		e.setSpeaker(speaker);
		e.setSpeakerinfo(speakerinfo);
		e.setVenue(venue);
		e.setTime(time);
		e.setDate(date);
		
try{
  	EventDao pao = new EventDao();
    pao.update(e);
    response.sendRedirect("ViewEventServlet");
   		}
catch(Exception d){
	response.sendRedirect("Event.jsp?error=Again Update Event");
	d.printStackTrace();
		}
		}
  	}
