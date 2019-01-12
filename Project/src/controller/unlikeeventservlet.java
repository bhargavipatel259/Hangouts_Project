package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class unlikeeventservlet
 */
@WebServlet("/unlikeeventservlet")
public class unlikeeventservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public unlikeeventservlet() {
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
		
		likeeventbean l = new likeeventbean();
		l.sethangout_id(hangout_id);
		l.setemail(email);
		System.out.println(hangout_id);
		System.out.println(email);
		
		unlikeeventdao d = new unlikeeventdao();
		String uservalidate = d.authenticateUser(l);
		System.out.println("daoset");

				if(uservalidate.equals("SUCCESS"))
				{
				
					System.out.println("like event success");

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
