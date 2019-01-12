<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<body background ="admin.jpg">
<%
String email = request.getParameter("organizer_email");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "ualbanyhangouts";
String userId = "icsi518";
String password = "secretICSI518";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Event information</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>hangoutid</b></td>
<td><b>name</b></td>
<td><b>organizer_email</b></td>
<td><b>cate_id</b></td>
<td><b>img</b></td>
<td><b>day</b></td>
<td><b>month</b></td>
<td><b>year</b></td>
<td><b>time</b></td>
<td><b>venue</b></td>
<td><b>Description</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT hangout_id,day,month,year,img,name,CAST(time AS char) AS col_time,venue FROM event_details where cate_id in (Select category_id from interested_category where email='"+sid+"') and hangout_id not in (Select hangout_id from rsvp_event where user_email='"+sid+"')"0;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getInt("hangout_id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("organizer_email") %></td>
<td><%=resultSet.getInt("cate_id") %></td>
<td><%=resultSet.getString("img") %></td>
<td><%=resultSet.getInt("day") %></td>
<td><%=resultSet.getString("month") %></td>
<td><%=resultSet.getInt("year") %></td>
<td><%=resultSet.getString("col_time") %></td>
<td><%=resultSet.getString("venue") %></td>
<td><%=resultSet.getString("Description") %></td>
<td><a href="deleteevent.jsp?email=<%=resultSet.getString("organizer_email") %>"><button type="button" class="delete">
Delete</button></a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>