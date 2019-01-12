package com.controller.divy;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.divy.ViewEventDao;

import bean.Eventbean;
import bean.loginbean;

@WebServlet("/ViewEventServlet")

public class ViewEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ViewEventServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessionp =request.getSession();
		String email = (String) sessionp.getAttribute("email");
		System.out.println("-----email form vieweventservlet----"+email);
		
		response.setContentType("text/html");  
        PrintWriter out =response.getWriter();  
        out.println("<a href='Event.jsp'>Create New Event</a>");  
        out.println("<h1>Events List</h1>");  
                  
        ViewEventDao vdao= new ViewEventDao();
        List<Eventbean> list = vdao.getAllEvents(email);   
        
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>Title</th><th>TextPart</th><th>Speaker</th><th>Speakerinfo</th><th>Venue</th><th>Time</th><th>Date</th></tr>");  
        List<Eventbean> listp =  list;
        sessionp.setAttribute("boost",listp);
        response.sendRedirect("ViewEvents.jsp"); 
//        for(Eventbean e:list)
//        {          	
//        	session.setAttribute("title", e.getTitle());
//        	session.setAttribute("textpart", e.getTextpart());
//        	session.setAttribute("speaker", e.getSpeaker());
//        	session.setAttribute("speakerinfo", e.getSpeakerinfo());
//        	session.setAttribute("venue", e.getVenue());
//        	session.setAttribute("time", e.getTime());
//        	session.setAttribute("date", e.getDate());
//        	        	
//        out.print("<tr><td>"+ e.getTitle()+"</td><td>"+e.getTextpart()+"</td><td>"+e.getSpeaker()+"</td><td>"+e.getSpeakerinfo()+"</td><td>"+e.getVenue()+"</td><td>"+ "</td><td>"+ e.getTime()+ "</td><td>"+ e.getDate());  
//        }  //<a href='EditServlet?id="+e.getUserid()+"'>edit</a></td><td><a href='DeleteServlet?id="+e.getUserid()+"'>delete</a></td></tr>"
        //out.print("</table>");  
          
        out.close();  
    }  


}
