package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.catmusicservletbean1;
import dao.catmusicservletdao1;

/**
 * Servlet implementation class catmusicservlet1
 */
@WebServlet("/catmusicservlet1")
public class catmusicservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public catmusicservlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		System.out.println("servlet1000");

		catmusicservletbean1 l = new catmusicservletbean1();
		l.setmusic(category);
		l.setemail(email);
		 
		System.out.println(category);
		
		catmusicservletdao1 d = new catmusicservletdao1();
		String uservalidate = d.authenticateUser(l);
		
		if(uservalidate.equals("SUCCESS"))
		{
		
			System.out.println("servlet12");

			response.sendRedirect("removecategories.jsp?msg=category removed sucessfully");
		}
		else {
			System.out.println("servlet13");

			response.sendRedirect("removecategories.jsp?msg=category not removed sucessfully");

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
