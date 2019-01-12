package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.catdivbean;
import dao.catdivdao;

/**
 * Servlet implementation class catdivservlet
 */
@WebServlet("/catdivservlet")
public class catdivservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public catdivservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String event = request.getParameter("event");
		
		catdivbean c = new catdivbean();
		c.setevent(event);
		
		catdivdao d = new catdivdao();
		String uservalidate = d.authenticateUser(c);

		if(uservalidate.equals("SUCCESS"))
		{
		

			response.sendRedirect("showcategories.jsp");
		}
		else {
			System.out.println("servlet13");

			response.sendRedirect("categories.jsp?msg=category not  added sucessfully");

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
