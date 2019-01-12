<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
<h2 align="center"><font><strong>Category Request</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>category_name</b></td>
<td><b>Description</b></td>
<td><b>organizer_email</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM request_category";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">







<td><%=resultSet.getString("category_name") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("organizer_email") %></td>
<td><a href="adminaddcategory.jsp?category_name=<%=resultSet.getString("category_name") %>"><button type="button">
Accept</button></a></td>
<td><a href="deletecategory.jsp?category_name=<%=resultSet.getString("category_name") %>"><button type="button" class="delete">
Delete</button></a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>