package controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Db_Connection;
@WebServlet("/viewEventReport")
public class viewEventReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public viewEventReport() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("viewEventReport");
		PrintWriter out = new PrintWriter(System.out);
		
		try
        {  
        	int id =0;
        	String idp= request.getParameter("file");
        	System.out.println("Output from viewEventReport.java------"+idp);
			if(idp==null){int y=0; id=y;}
			else{  int y=Integer.parseInt(idp);
			id=y;}//(request.getParameter("id"));
            Blob file = null;
            byte[ ] fileData = null ;

            Db_Connection dbconn=new Db_Connection();
            Connection conn= dbconn.Connection();
        
            String sqlString = "SELECT file FROM eventreport WHERE hangout_id = '"+id+"'";
			System.out.println(sqlString+"from viewEventReport.jsp");
            Statement myStatement = conn.createStatement();
            
            ResultSet rs=myStatement.executeQuery(sqlString);
            
            if (rs.next()) 
            {
                file = rs.getBlob("file");
                fileData = file.getBytes(1,(int)file.length());
            } else 
            {
                System.out.println("file not found!");
                return;
            }
            
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "inline");
            response.setContentLength(fileData.length);
            OutputStream output = response.getOutputStream();
            output.write(fileData);
            output.flush();
            } catch (SQLException ex) {Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);} 
    		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
