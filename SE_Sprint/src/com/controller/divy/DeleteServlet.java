package com.controller.divy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.divy.EventDao;
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
		{
			
			int eventid =Integer.parseInt(request.getParameter("id"));
			EventDao.delete(eventid);
			response.sendRedirect("ViewEvents.jsp?Event deleted");
		}
}	