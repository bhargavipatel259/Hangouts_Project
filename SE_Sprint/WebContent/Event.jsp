<head>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>User | Hangouts</title>
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/profile.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap-select.min.css">
		<link rel="stylesheet" href="css/bootstrap-slider.min.css">
		<link rel="stylesheet" href="css/jquery.scrolling-tabs.min.css">
		<link rel="stylesheet" href="css/bootstrap-checkbox.css">
		<link rel="stylesheet" href="css/flexslider.css">
		<link rel="stylesheet" href="css/featherlight.min.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/bootstrap.offcanvas.min.css">
		<link rel="stylesheet" href="css/core.css">
	  

		<!-- Custom styles for this template -->
		<link rel="stylesheet" href="css/style.css" >
		<link rel="stylesheet" href="css/responsive.css" >

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="http://cdnjs.cloudflare.com/ajax/libs/selectivizr/1.0.2/selectivizr-min.js"></script>
			<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
<style>
.hero-1{
	position:relative;
	background:url(hero-1-img.jpg) no-repeat center center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	height:110px;
}

.top-header .top-right ul li:first-child a{
	color:#b3b3b3;
	font-weight:500;
}
</style>


		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<% 
if(session.getAttribute("email")== null){
  response.sendRedirect("index.jsp");
}
%>
<style>
 body {
    background-image:url(bg.jpg);	
    
}
div {
	width: 35%;
    padding: 10px;
    border: 5px solid black;
}

table{
	padding: 20px;
    border: 5px solid black;
}
</style>
<body>
<br>
<a href="index.jsp">Back to Home Page</a>


<center>
<div><h1>

<font size = "5" color = "SlateBlue"> CREATE EVENT </font>

</h1></div>
<br>


<form action= "<%=request.getContextPath()%>/EventServlet" method ="post" enctype="multipart/form-data" onsubmit=" return check()" >

<table>

<tr><td height="50">
<font color = "Light SlateBlue"> TITLE: </font>
<td height="30">
<input autofocus type="text" name="title" id="titlea" placeholder= "Enter Event Title"/>
</td>
</tr>
<tr><td height="30">

<font color = "Light SlateBlue"> DESCRIPTION: </font>

<td>
<textarea rows="5" cols="50" maxlength="250" id="writearea" name="textpart" placeholder="Enter text here...">
</textarea>
</td>
</tr>
<tr>
<td height="30">

<font color = "Light SlateBlue"> DATE: </font>

<td height="30">
<input type="date" id="dat" name = "dats"/>
</td>
</tr>

<tr>
<td>
<font color = "Light SlateBlue"> TIME: </font>
<td>
<input type="time" id="tim" name="tims"/>
</td>
</tr>

<tr>
<td>
<font color = "Light SlateBlue"> VENUE: </font>
<td>
<input type="text" name= "venue" id="ven" placeholder="Enter venue of your Event"/>
</td>
</tr>

<tr>
<td>


<font color = "Light SlateBlue"> Orator: </font>

<td>
<input type="text" name= "speaker" id="spk" placeholder="Enter Orator's Name"/>
</td>
</tr>
<tr>
<td>
<font color = "Light SlateBlue"> ORATOR'S INFO: </font>

<td>
<textarea rows="5" cols="35" maxlength="150" name= "speakerinfo" id="spkinfo" placeholder="Enter Orator's Info "></textarea>
</td>
</tr>

<tr>
<td><td>

<!--
<img src="imgaes/event-category-1.jpg">
-->
  
<input type="checkbox" name="checkboxa" id="music_a" value="Music"> <font color = "Light SlateBlue"> MUSIC </font>
<input type="checkbox" name="checkboxb" id="sports_a" value="Sports"> <font color = "Light SlateBlue"> SPORTS </font>
<input type="checkbox" name="checkboxc" id="Dance_a" value="Dance"> <font color = "Light SlateBlue"> Dance </font>
<input type="checkbox" name="checkboxd" id="Technology_a" value="Technology"> <font color = "Light SlateBlue"> Technology </font>
<input type="checkbox" name="checkboxe" id="Management_a" value="Management"> <font color = "Light SlateBlue"> Management & Leadership </font>
<input type="checkbox" name="checkboxf" id="Language_a" value="Language"> <font color = "Light SlateBlue"> Language & Culture </font>
<input type="checkbox" name="checkboxg" id="python_a" value="python"> <font color = "Light SlateBlue"> Python </font>

<tr><td>Portrait Photo: </td>
                    <td><input type="file" name="eventphoto" size="50"/></td></tr>
                    
</td> </td>
</tr>
</table>
<div align="center">
<input type="submit" value="SUBMIT" >
</div>
</center>
</form>
</body>
</html>
