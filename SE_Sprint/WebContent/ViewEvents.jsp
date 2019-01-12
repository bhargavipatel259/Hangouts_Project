<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import = "java.io.PrintWriter,javax.servlet.http.HttpSession,bean.Eventbean,java.util.List,javax.servlet.ServletRequest"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Created Events</title>
</head>
<% 
if(session.getAttribute("email")== null){
  response.sendRedirect("login.jsp");
}
 response.setContentType("text/html");  
 PrintWriter oput = response.getWriter();
 oput.println("<a href='Event.jsp'>Create New Event</a>");  
 oput.println("<h1>Events List</h1>");  
 oput.print("<table border='1' width='100%'");  
 //oput.print("<tr><th>Title</th><th>TextPart</th><th>Speaker</th><th>Speakerinfo</th><th>Venue</th><th>Time</th><th>Date</th></tr>");  
 try{
	 HttpSession sessionp =request.getSession();
	 List<Eventbean> listo= (List)sessionp.getAttribute("boost");
	 List<Eventbean> pop = listo;
	 for(Eventbean e:pop)
     { 	
	    oput.print("<tr><td>"+ e.getTitle()+"</td><td>"+e.getTextpart()+"</td><td>"+e.getSpeaker()+"</td><td>"+e.getSpeakerinfo()+"</td><td>"+e.getVenue()+"</td><td>"+ "</td><td>"+ e.getTime()+ "</td><td>"+ e.getDate()+"</td><td><a href='EditServlet?id="+e.getEventid()+"'>edit</a></td><td><a href='DeleteServlet?id="+e.getEventid()+"'>delete</a></td>"); 
     }
	 //oput.print("<tr><td>"+ session.getAttribute("title")+"</td><td>"+session.getAttribute("textpart")+"</td><td>"+session.getAttribute("speaker")+"</td><td>"+session.getAttribute("speakerinfo")+"</td><td>"+session.getAttribute("venue")+"</td><td>"+ "</td><td>"+ session.getAttribute("time")+ "</td><td>"+ session.getAttribute("date"));

 }catch(Exception e){e.printStackTrace();}
 oput.print("</table>");
 
 oput.close();
%>

<body>
</body>
</html>