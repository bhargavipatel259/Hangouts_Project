<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.*"%>

<%

String email=request.getParameter("email");
response.sendRedirect("organizer.jsp");

%>
<%try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangout","icsi518", "secretICSI518");
ResultSet rs = null;
Statement st=null;
st=conn.createStatement();

st.executeUpdate("delete from organizer_details where email='"+email+"'");


}catch(SQLException e){ 
    System.out.println(e.getMessage()); 
    }
    %>
