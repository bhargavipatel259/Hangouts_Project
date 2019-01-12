package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.updateorgpassdao;

/**
 * Servlet implementation class updateorgpassservlet
 */
@WebServlet("/updateorgpassservlet")
public class updateorgpassservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateorgpassservlet() {
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
		String oldpassword = request.getParameter("oldpassword");

		String newpassword = request.getParameter("newpassword");
		HttpSession session = request.getSession();

		String email = session.getAttribute("email").toString();
		
		updatepassbean p = new updatepassbean();
		p.setoldpassword(oldpassword);
		p.setnewpassword(newpassword);
		p.setemail(email);
		System.out.println(email);
		updateorgpassdao d = new updateorgpassdao();
		String values = d.storevalues(p);
		if(values.equals("SUCCESS"))
		{
			response.sendRedirect("Profileorganizer.jsp?msg=editprofile sucessful");
	
		}
		else {
			request.setAttribute("errMessage", values);
			request.getRequestDispatcher("/updateorgpassword.jsp").forward(request,response);
			
		}
		



	}

}
