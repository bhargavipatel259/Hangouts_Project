package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class createeventservlet
 */
@WebServlet("/createeventservlet")
public class createeventservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createeventservlet() {
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
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();

		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String cate_name = request.getParameter("radio");
		

		String day = request.getParameter("day");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String time = request.getParameter("time");
		String venue = request.getParameter("venue");
		String profilepic = request.getParameter("profilepic");
		System.out.println("get");
		
		createventbean c = new createventbean();
		c.settitle(title);
		c.setdescription(description);
		c.setday(day);
		c.setmonth(month);
		c.setyear(year);
		c.settime(time);
		c.setcate_name(cate_name);
		c.setvenue(venue);
		c.setprofilepic(profilepic);
		c.setemail(email);
		System.out.println("set");

		createventdao f = new createventdao();
		String values = f.storevalues(c);
		
		if(values.equals("SUCCESS"))
		{
			System.out.println("daopass");

			response.sendRedirect("Profileorganizer.jsp?msg=event sucessful");
	
		}
		else {
			System.out.println("daofail");

			request.setAttribute("errMessage", values);
			request.getRequestDispatcher("/try.jsp").forward(request,response);
			
		}
		
	}

}
