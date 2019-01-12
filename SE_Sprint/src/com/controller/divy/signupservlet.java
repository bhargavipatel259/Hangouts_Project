package com.controller.divy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.signupbean;
import com.model.divy.signupdao;

@WebServlet("/signupservlet")
public class signupservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public signupservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String radio = request.getParameter("radio");
		System.out.println("----------------------------print role"+radio);
		signupbean s = new signupbean();
		s.setfirstname(firstname);
		s.setlastname(lastname);

		s.setemail(email);
		s.setpassword(password);
		s.setradio(radio);
		
		signupdao d = new signupdao();
		String values = d.storevalues(s);
		
		if(values.equals("SUCCESS"))
		{
			response.sendRedirect("index.jsp?msg=Registration sucessful");
//			request.getRequestDispatcher("/Profile.jsp").forward(request,response);
	
		}
		else {
			request.setAttribute("errMessage", values);
			request.getRequestDispatcher("/index.jsp").forward(request,response);
		
		}
		
	}

}
