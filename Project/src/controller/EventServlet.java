package controller;

import java.io.IOException;
//import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EventDao;

import bean.Eventbean;


@WebServlet("/EventServlet")
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
		String rep= "";
	   //Time time= request.getParameter("tims");
       // Date date = request.getParameter("dati");
		String speaker = request.getParameter("speaker");
		String speakerinfo = request.getParameter("speakerinfo");
		String venue = request.getParameter("venue");
		HttpSession session= request.getSession();
		String email = (String)request.getAttribute("email");
		
//		String email= request.getParameter("email");
//		
		
		if((checkboxa)=="" || (checkboxa)== null)
			{rep= checkboxa;}	
		if((checkboxb)=="" || (checkboxb)== null)
			{rep = checkboxb;}
		if((checkboxc)=="" || (checkboxc)== null)
			{ rep = checkboxc;}
				
		Eventbean e = new Eventbean();
		e.setTitle(title);
		e.setTextpart(textpart);
		e.setRep(rep);
		e.setEmail(email);
		e.setSpeaker(speaker);
		e.setSpeakerinfo(speakerinfo);
		e.setVenue(venue);
		
try{
  	EventDao pao = new EventDao();
      pao.save(e);
    response.sendRedirect("Event.jsp?pass=Event Created");
   		}
		catch(Exception d){
		d.printStackTrace();
		}
		}
	}