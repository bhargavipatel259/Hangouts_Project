<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<body background ="admin.jpg">
<%
String id = request.getParameter("email");
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
<h2 align="center"><font><strong>User information</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>email</b></td>
<td><b>Password</b></td>
<td><b>firstName</b></td>
<td><b>lastname</b></td>
<td><b>profile_pic</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM user_details";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("pwd") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("profile_pic") %></td>
<td><a href="deleteuser.jsp?email=<%=resultSet.getString("email") %>"><button type="button" class="delete">
Delete</button></a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>