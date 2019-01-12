package com.controller.divy;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.loginbean;
import com.model.divy.logindao;

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public loginservlet() {
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String radio = request.getParameter("radio");

System.out.println("-------------------1------------");
	loginbean l = new loginbean();
	l.setEmail(email);
System.out.println("loginservlet login email set"+ email);
	l.setPassword(password);
	l.setRadio(radio);
	System.out.println("-------------------2------------");
	
	logindao d = new logindao();
	String uservalidate = d.authenticateUser(l);
	
	if(uservalidate.equals("SUCCESS"))
	{	HttpSession session = request.getSession();
		session.setAttribute("email", email);
		session.setAttribute("radio", radio);
		System.out.println("-------------------3------------");
		response.sendRedirect("Profile.jsp?msg=login sucessful");
//		request.getRequestDispatcher("/Profile.jsp").forward(request,response);
		
	}
	else
	{
		//LinkedList message = new LinkedList();
		System.out.println("----------4---------");
//		String message="Username OR Password is incorrect";
		//request.setAttribute("message", message);
		//System.out.println("----------message---------"+message);
	//	request.getRequestDispatcher("index.jsp").forward(request, response);
		response.sendRedirect("index.jsp?error=Invalid email or password");
	}
	}

}
