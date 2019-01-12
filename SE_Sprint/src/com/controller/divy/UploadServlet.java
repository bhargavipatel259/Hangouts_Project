package com.controller.divy;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.model.divy.EditProfileDao;

import bean.loginbean;

@WebServlet("/UploadServlet")
@MultipartConfig(maxFileSize = 16177215)
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		InputStream inputStream = null; 
        HttpSession session = request.getSession();
        String email = (String)session.getAttribute("email");
        String radio =(String)session.getAttribute("radio");
		
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
    
            inputStream = filePart.getInputStream();
            if(inputStream == null){response.sendRedirect("UploadImg.jsp?Again upload image");}
            
            EditProfileDao dao = new EditProfileDao();
            loginbean l =new loginbean();
            l.setEmail(email);
            l.setRadio(radio);
            dao.upload(inputStream, l);
            response.sendRedirect("Profile.jsp?Password Updated");
	}

}
}
