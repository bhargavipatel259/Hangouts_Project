<!-- displays category, select category and go to events list by category page -->

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.Connection" %>
<%@page contentType = "text/html" pageEncoding = "UTF-8" %>

<html>
    <head>Category of Event</head>
    <sql:DataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
        url = "jdbc:mysql://localhost/ualbanyhangouts"
        user = "root" password = "avishek" />
    
    <sql:query dataSource = "${snapshot}" var="result">
        SELECT category_id, category_name from categories;
    </sql:query>
    <form action="event_list.jsp">
        <div>
            <select name="item">
                    <c:forEach var ="row" items="${result.rows}">   //ref set var 'result'
                        <option value='<c:out value="${row.category_name}"/>'><c:out value="${row.category_name}"/</option>
                    </c:forEach>
            </select>
        </div>
        <input type="submit" value="submit">
    </form>
</html>
