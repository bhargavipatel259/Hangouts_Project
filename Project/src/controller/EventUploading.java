package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EventUploading")
public class EventUploading extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EventUploading() {
        super();            }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		int idnew = Integer.parseInt(id);

		System.out.println(idnew+ "from Eventuploading Servlet");
	
		session.setAttribute("idofEvent", idnew);
		response.sendRedirect("EventReport.jsp");	
	}
}
