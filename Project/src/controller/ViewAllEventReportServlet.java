package controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.Db_Connection;
import dao.ViewAllEventReportDao;

import bean.EventReportBean;

@WebServlet("/ViewAllEventReportServlet")
public class ViewAllEventReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewAllEventReportServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= new PrintWriter(System.out);
        HttpSession sessionw = request.getSession();
        String email =(String)sessionw.getAttribute("email");
        System.out.println("email from ViewAllEventReportServlet"+email);
        
           Blob file = null;
           byte[ ] fileData = null ;
       
           ViewAllEventReportDao dao = new ViewAllEventReportDao(); 
           List<EventReportBean> listl =dao.viewreports(email);
System.out.println("List of reports is going to execute-------------");
           sessionw.setAttribute("listofreports", listl);
           
           
           	   response.setContentType("application/pdf");
               response.setHeader("Content-Disposition", "inline");
               //response.setContentLength(fileData.length);
               response.sendRedirect("viewallreportjsp.jsp");      
//               OutputStream output = response.getOutputStream();
//               output.write(fileData);
//               
//               output.flush();
//               
       	

	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
