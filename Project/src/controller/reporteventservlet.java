package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class reporteventservlet
 */
@WebServlet("/reporteventservlet")
public class reporteventservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reporteventservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String hangout_id = request.getParameter("id");
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		System.out.println(hangout_id);
		System.out.println(email);

		
		likeeventbean l = new likeeventbean();
		l.sethangout_id(hangout_id);
		l.setemail(email);
		System.out.println("beanset");

		reporteventdao d = new reporteventdao();
		String uservalidate = d.authenticateUser(l);
		System.out.println("daoset");

		if(uservalidate.equals("SUCCESS"))
		{
			System.out.println("s12");


			response.sendRedirect("viewevent.jsp?id="+hangout_id+"");
		}
		else {
			
			System.out.println("servlet13");

			response.sendRedirect("viewevent.jsp?id="+hangout_id+"");


		
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
