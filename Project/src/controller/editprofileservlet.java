package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.editprofilebean;
import bean.signupbean;
import dao.editprofiledao;
import dao.signupdao;

/**
 * Servlet implementation class editprofileservlet
 */
@WebServlet("/editprofileservlet")
public class editprofileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editprofileservlet() {
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
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String profilepic = request.getParameter("profilepic");
		HttpSession session = request.getSession();

		String email = session.getAttribute("email").toString();
		System.out.println(email);
		editprofilebean s = new editprofilebean();
		s.setfirstname(firstname);
		s.setlastname(lastname);
		s.setprofilepic(profilepic);
		s.setemail(email);
		System.out.println(profilepic);
		editprofiledao d = new editprofiledao();
		String values = d.storevalues(s);
		if(values.equals("SUCCESS"))
		{
			response.sendRedirect("Profile.jsp?msg=editprofile sucessful");
	
		}
		else {
			request.setAttribute("errMessage", values);
			request.getRequestDispatcher("/editprofile.jsp").forward(request,response);
			
		}
		





	}

}
