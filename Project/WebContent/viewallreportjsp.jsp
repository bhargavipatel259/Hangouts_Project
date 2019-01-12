<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.EventReportBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view all submitted reports</title>
<% 
HttpSession sessiona= request.getSession();
List<EventReportBean> listn = (List)sessiona.getAttribute("listofreports");

for(EventReportBean p: listn){
	System.out.println(p.getEventid()+"id of event is:");
}
%>
<table border='1' width='100%'>
<tr><td>FileName</td><td>Text<td>Title</td><td>Eventid</td></tr>
<% for(EventReportBean e :listn)
{
	System.out.println(e.getEventid()+"Event id is from jsp");
	System.out.println(e.getFilename()+"filename is from jsp");
	//System.out.println(e.getFilename()+"Event id is from jsp");
%>
<tr><td><%=e.getFilename()%></td><td><%=e.getText()%><td><%=e.getTitle()%></td><td><%=e.getEventid() %> </td></tr>

<% }%>

</table>
</head>
<body>
<form action ="<%=request.getContextPath()%>/viewEventReport">
    Event id:<input type="text" name="file" id="filev" placeholder="Enter event id"/>
     <input type="submit" value="Send">  
        </form>             
        <br><br>
        <a href="Profileorganizer.jsp">Go to Main Page...</a>        
                
        <div style="position: relative">
            <div style="position: fixed ; bottom: 0 ; width:100% ; text-align:center ">
                
            </div>
        </div>
        
    </body>
    </html>