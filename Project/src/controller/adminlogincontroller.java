package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminlogincontroller")
public class adminlogincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlogincontroller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (username.equals("") && password.equals("")) {
			request.setAttribute("Error", "Please enter username and passsword");
			RequestDispatcher reqdis = request.getRequestDispatcher("/adminlogin.jsp");
			reqdis.include(request, response);
		} 
		else if (("admin_bhargavi".equalsIgnoreCase(username)) && ("admin".equals(password))) {
			request.setAttribute("username", username);
			RequestDispatcher reqdis = request.getRequestDispatcher("/dashboard.jsp");
			reqdis.forward(request, response);
			reqdis.include(request, response);

		} else if (username.equals("")) {
			request.setAttribute("Error", "Please Enter Username");
			RequestDispatcher reqdis = request.getRequestDispatcher("/adminlogin.jsp");
			reqdis.include(request, response);
		} else if (password.equals("")) {
			request.setAttribute("Error", "Please Enter Password");
			RequestDispatcher reqdis = request.getRequestDispatcher("/adminlogin.jsp");
			reqdis.include(request, response);
		} else {
			request.setAttribute("Error", "Invalid Username or Password....Try Again!");
			RequestDispatcher reqdis = request.getRequestDispatcher("/adminlogin.jsp");
			reqdis.include(request, response);
		}
	}

}
