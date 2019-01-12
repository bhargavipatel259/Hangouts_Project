<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import = "java.io.PrintWriter,javax.servlet.http.HttpSession,bean.Eventbean,java.util.List,javax.servlet.ServletRequest"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%HttpSession sessionb = request.getSession();
String parama= (String)sessionb.getAttribute("radio");//role from login jsp
String paramb= (String)sessionb.getAttribute("email");//username from login jsp
//String paramc= (String)sessionb.getAttribute("cpassfromdb");//password from db 
//int paramd = (int)sessionb.getAttribute("update");
%>
<Script>
function check(){
		var passdb= '<%=parama%>';
		var updatestatus= '<%=paramb %>';
alert(passdb + updatestatus);
}
</Script>
<body>
<form onsubmit="return check()">
<input type="submit" value="bb">
</form>

</body>
</html>