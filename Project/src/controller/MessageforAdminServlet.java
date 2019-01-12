package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MessageDao;
@WebServlet("/MessageforAdminServlet")
public class MessageforAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MessageforAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		String Message =(String)request.getParameter("textpart");
		String title =(String)request.getParameter("title");
	
		try {
		MessageDao message = new MessageDao();
		int p =message.Message(email,title,Message);
		if(p>0) {
		System.out.println("Message Sent!");
		response.sendRedirect("Profileorganizer.jsp?Message sent!");//Main page
		}}
		catch(Exception e) {e.printStackTrace();
		response.sendRedirect("MessagePage.jsp?Message not sent!");}
	}
	
}
