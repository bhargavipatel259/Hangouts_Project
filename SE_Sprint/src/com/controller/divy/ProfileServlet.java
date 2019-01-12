package com.controller.divy;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.loginbean;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			loginbean l =new loginbean();
			HttpSession session = request.getSession();
			String radio=(String)session.getAttribute("radio");
			String email=(String)session.getAttribute("email");
			System.out.println(radio + email);

//		    System.out.println(imageId);
		    InputStream sImage;

		    if(email== null){response.sendError(404);}
		    
			 try{
				 Class.forName("com.mysql.jdbc.Driver");
				 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:9050/ualbanyhangouts", "root", "root");
		         PreparedStatement stmt = conn.prepareStatement("select * from "+radio+"_details  where email="+email);
		         ResultSet rs = stmt.executeQuery();
		         String sql ="select * from "+radio+"_details  where email="+email;
		         System.out.println(sql+"-------------------profile servlet");
		         
		         if(rs.next()){
		             System.out.println("Inside RS");
		             byte[] bytearray = new byte[1048576];
		             int size=0;
		             sImage = rs.getBinaryStream(4);
		            
		             while((size = sImage.read(bytearray)) != -1 ){
		                 response.getOutputStream().
		                 write(bytearray,0,size);
		             }
		         }

		     } catch (Exception e){
		         e.printStackTrace();
		     }
		 }
			
	
	}
