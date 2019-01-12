package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.RSVPbean;
import dao.RSVPdao;
import dao.delRSVPdao;

/**
 * Servlet implementation class delRSVPServlet
 */
@WebServlet("/delRSVPServlet")
public class delRSVPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delRSVPServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		

		RSVPbean r = new RSVPbean();
		r.setid(id);
		r.setemail(email);

		delRSVPdao d = new delRSVPdao();
		String uservalidate = d.authenticateUser(r);
		
		if(uservalidate.equals("SUCCESS"))
		{
		
			System.out.println("servlet12");

			response.sendRedirect("Profile.jsp?msg=event added sucessfully");
		}
		else {
			System.out.println("servlet13");

			response.sendRedirect("Profile.jsp?msg=event not  added sucessfully");


		
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
