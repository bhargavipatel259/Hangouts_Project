package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class likeeventservlet
 */
@WebServlet("/likeeventservlet")
public class likeeventservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public likeeventservlet() {
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


		likeeventdao d = new likeeventdao();
String uservalidate = d.authenticateUser(l);

		if(uservalidate.equals("SUCCESS"))
		{
		

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
