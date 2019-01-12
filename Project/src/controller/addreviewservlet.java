package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addreviewservlet
 */
@WebServlet("/addreviewservlet")
public class addreviewservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addreviewservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String review = request.getParameter("review");
		String hangout_id = request.getParameter("hangout_id");

		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		System.out.println(email);
		System.out.println(review);
		System.out.println(hangout_id);
		
		likeeventbean l = new likeeventbean();
		l.sethangout_id(hangout_id);
		l.setemail(email);
		l.setreview(review);
		
		addreviewdao d = new addreviewdao();
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


	}


