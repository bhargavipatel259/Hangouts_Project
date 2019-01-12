package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.loginbean;
import dao.logindao;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String radio = request.getParameter("radio");
		
		loginbean l = new loginbean();
		l.setemail(email);
		l.setpassword(password);
		l.setradio(radio);
		
		
		logindao d = new logindao();
		String uservalidate = d.authenticateUser(l);
		
		if(uservalidate.equals("SUCCESS"))
		{
			if(radio.equals("user")) {
				HttpSession session =request.getSession();
				session.setAttribute("email", email);
				String firstname = l.getfirstname();
				session.setAttribute("firstname", firstname);

				response.sendRedirect("Profile.jsp?msg=login sucessful");
			}
			else {
				HttpSession session =request.getSession();
				session.setAttribute("email", email);

				response.sendRedirect("Profileorganizer.jsp?msg=login sucessful");
			}
			
		}
		else
		{
			request.setAttribute("errMessage", uservalidate);
			request.getRequestDispatcher("/signin.jsp").forward(request,response);
		}

	}

}
