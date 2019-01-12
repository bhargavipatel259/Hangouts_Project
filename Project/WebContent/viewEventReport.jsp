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
   
    		<%  
    		try
            {  
            	int id =0;
            	String idp= request.getParameter("file");
				if(idp==null){int y=0; id=y;}
				else{  int y=Integer.parseInt(idp);
				id=y;}//(request.getParameter("id"));
                Blob file = null;
                byte[ ] fileData = null ;

                Db_Connection dbconn=new Db_Connection();
                Connection conn= dbconn.Connection();
                int idm =id;
                
                String sqlString = "SELECT file FROM eventreport WHERE eventid = "+idm +"";
   				System.out.println(sqlString+" from viewEventReport.jsp");
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
        %>
    </head> 
    <body>
        <br><br>
        <a href="Profile.jsp">Go to Main Page...</a>        
                
        <div style="position: relative">
            <div style="position: fixed ; bottom: 0 ; width:100% ; text-align:center ">
                
            </div>
        </div>
        
    </body>
</html>