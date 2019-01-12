<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  -->
 
</head>

<body background ="admin.jpg">
<br>

	<h1 align ="justify"> ADMIN LOGIN !</h1>
	<form name="myForm" method="post" action="adminlogincontroller"
		onsubmit="return checkBlanks()">
		<table>
			<tr>
				<td>USERNAME :</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>PASSWORD :</td>
				<td><input type="password" name="password"></td>
			</tr>
			
			<tr>
				<td>
		</table>
		<br>	
		<input type="submit" id="login" value="LOGIN"></div> <br/> 
		
		<h4 align="left">${Error}</h4>
	</form>
	</align>
</body>
</html>