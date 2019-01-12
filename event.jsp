<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String email = request.getParameter("email");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "ualbanyhangout";
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
<td><b>eventid</b></td>
<td><b>email</b></td>
<td><b>title</b></td>
<td><b>textpart</b></td>
<td><b>rep</b></td>
<td><b>speaker</b></td>
<td><b>speakerinfo</b></td>
<td><b>venue</b></td>
<td><b>date</b></td>
<td><b>time</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM event";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getInt("eventid") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("title") %></td>
<td><%=resultSet.getString("textpart") %></td>
<td><%=resultSet.getString("rep") %></td>
<td><%=resultSet.getString("speaker") %></td>
<td><%=resultSet.getString("speakerinfo") %></td>
<td><%=resultSet.getString("venue") %></td>
<td><%=resultSet.getDate("date") %></td>
<td><%=resultSet.getTimestamp("time") %></td>
<td><a href="deleteevent.jsp?email=<%=resultSet.getString("email") %>"><button type="button" class="delete">
Delete</button></a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>