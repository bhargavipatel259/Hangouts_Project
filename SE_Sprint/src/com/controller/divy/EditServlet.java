package com.controller.divy;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.divy.EventDao;
import com.model.divy.ViewEventDao;

import bean.Eventbean;
@WebServlet("/EditServlet")

public class EditServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public EditServlet() {
        super();
    
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = 0;
		response.setContentType("text/html");  
	
		id = Integer.parseInt(request.getParameter("id"));          
		List<Eventbean> listd;
		HttpSession session = request.getSession();
		ViewEventDao vda = new ViewEventDao();
		try{
		List<Eventbean> listx = vda.getEvent(id);
		System.out.println(id+"----------------id from edit servlet");
		listd =  listx;
		session.setAttribute("mast",listd);
		session.setAttribute("eventid",id);
        response.sendRedirect("Edit.jsp");
		}catch(Exception p){p.printStackTrace();}        
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
