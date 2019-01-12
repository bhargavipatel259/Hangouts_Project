<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.*"%>

<%

String email=request.getParameter("user_email");
response.sendRedirect("reportevent.jsp"); 

%>
<%try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts","icsi518", "secretICSI518");
ResultSet rs = null;
Statement st=null;
st=conn.createStatement();

st.executeUpdate("delete from event where user_email='"+email+"'");


}catch(SQLException e){ 
    System.out.println(e.getMessage()); 
    }
    %>
