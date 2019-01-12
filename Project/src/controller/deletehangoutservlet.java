package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deletehangoutservlet
 */
@WebServlet("/deletehangoutservlet")
public class deletehangoutservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletehangoutservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("servlet");
		String hangout_id = request.getParameter("id");
		
		likeeventbean l = new likeeventbean();
		l.sethangout_id(hangout_id);
		
		deletehangoutdao d = new deletehangoutdao();
		String uservalidate = d.authenticateUser(l);
		System.out.println("daoset");

		if(uservalidate.equals("SUCCESS"))
		{
			System.out.println("s12");


			response.sendRedirect("Profileorganizer.jsp?");
		}
		else {
			
			System.out.println("servlet13");

			response.sendRedirect("viewevento.jsp?id="+hangout_id+"");


		
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

	}
}


