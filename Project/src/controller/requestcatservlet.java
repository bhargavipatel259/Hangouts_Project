package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class requestcatservlet
 */
@WebServlet("/requestcatservlet")
public class requestcatservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public requestcatservlet() {
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
		System.out.println("enter");

		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		System.out.println(email);
		System.out.println(title);
		System.out.println(description);

		createventbean c = new createventbean();
		c.settitle(title);
		c.setdescription(description);
		c.setemail(email);
		
		requestcatdao f = new requestcatdao();
String values = f.storevalues(c);
		
		if(values.equals("SUCCESS"))
		{
			System.out.println("daopass");

			response.sendRedirect("Profileorganizer.jsp?msg=request sucessful");
	
		}
		else {
			System.out.println("daofail");

			request.setAttribute("errMessage", values);
			request.getRequestDispatcher("/requestcat.jsp").forward(request,response);
			
		}
		
	}

}


