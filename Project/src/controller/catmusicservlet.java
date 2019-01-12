package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.catmusicservletbean;
import bean.loginbean;
import dao.catmusicservletdao;
import dao.logindao;

/**
 * Servlet implementation class catmusicservlet
 */
@WebServlet("/catmusicservlet")
public class catmusicservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public catmusicservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("servlet0");

		String category = request.getParameter("category");
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		System.out.println("servlet10");

		catmusicservletbean l = new catmusicservletbean();
		l.setmusic(category);
		l.setemail(email);
		 
		System.out.println(category);
		
		catmusicservletdao d = new catmusicservletdao();
		String uservalidate = d.authenticateUser(l);
		
		if(uservalidate.equals("SUCCESS"))
		{
		
			System.out.println("servlet12");

			response.sendRedirect("addcategories.jsp?msg=category added sucessfully");
		}
		else {
			System.out.println("servlet13");

			response.sendRedirect("addcategories.jsp?msg=category not  added sucessfully");

		}

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

				}
}
		
		
		