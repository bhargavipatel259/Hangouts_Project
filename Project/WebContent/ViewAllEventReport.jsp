<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="dao.Db_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Submitted File</title>
    </head>
    <body>
         <%  
         HttpSession sessionw = request.getSession();
         String email =(String)sessionw.getAttribute("");
         
            Blob file = null;
            byte[ ] fileData = null ;

            try
            {    
                Db_Connection dbconn=new Db_Connection();
                Connection conn= dbconn.Connection();
            
                String sqlString = "SELECT * FROM eventreport WHERE email = '"+email+"'";
                Statement myStatement = conn.createStatement();
            	ResultSet rs=myStatement.executeQuery(sqlString);
                
                while (rs.next()) 
                {%>
           
                
                	<% 
                     file = rs.getBlob("file");
                    fileData = file.getBytes(1,(int)file.length());
                } 
            
                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "inline");
                response.setContentLength(fileData.length);
                
                OutputStream output = response.getOutputStream();
                output.write(fileData);
                
                output.flush();
                
            } catch (SQLException ex) {Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);} 
        %>
        
        <br><br>
        <a href="Profile.jsp">Go to Main Page...</a>        
                
        <div style="position: relative">
            <div style="position: fixed ; bottom: 0 ; width:100% ; text-align:center ">
                
            </div>
        </div>
        
    </body>
</html>