<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		
		
		<script type="text/javascript">
function check(){
var title= document.getElementById("titlea").value;	
var area= document.getElementById("writearea").value;
var checkboxa=document.getElementById("music_a").value;
var checkboxb=document.getElementById("sports_a").value;
var checkboxc=document.getElementById("arts_a").value;

var date = document.getElementById("dat").value;
var time = document.getElementById("tim").value;
var venue =document.getElementById("ven").value;

if (title==null || title=="" )
{
if(area=null || area==""){
	alert("Title and Description Cannot be blank");
	return false;
   }
else{
alert("Title Cannot be blank");
return false;
}
}
else if(area==null || area=="")
{
alert("Description cannot be blank");
return false;
}

//<!--checking for checkbox using jQuery -->
} 

</script>

<% 
if(session.getAttribute("email")== null){
  response.sendRedirect("login.jsp");
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

<body>
<br>
<a href="index.jsp">Back to Home Page</a>


<center>
<div><h1>

<font size = "5" color = "SlateBlue"> CREATE EVENT </font>

</h1></div>
<br>


		

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

.section-editprofile{
	background:#ff6600;
	color:black;
	font-weight:600;
	font-size:14px;
	line-height:18px;
	font-family: 'Open Sans', sans-serif;
	border:none;
	padding:12px 25px;
	border-radius:50px;
	text-align:center;
	display:inline-block;
	text-transform:uppercase;
	height:53px;
	width:250px;
	margin:0 0 5px 0;
}

.section-editprofile:hover{
	background:#ff6600;
	color:#fff;
}
.card.hovercard .cardheader {
    background: url("dp.jpg");
    background-size: cover;
    height: 135px;
}
.card.hovercard .info .title {
    margin-bottom: 4px;
    font-size: 24px;
    line-height: 1;
    color: black;
    vertical-align: middle;
}



</style>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<header id="masthead" class="site-header fix-header header-1">
			<div class="top-header top-header-bg">
				<div class="container">
					<div class="row">
						<div class="top-left">
							<ul>
								<li>
									<a href="#">
										<i class="fa fa-phone"></i>
										+15185308322
									</a>
								</li>
								<li>
									<a href="mailto:pkpatel@albany.edu"> 
										<i class="fa fa-envelope-o"></i>
										pkpatel@albany.edu
									</a>
								</li>
							</ul>
						</div>
						<div class="top-right">
							<ul>
								<li>
									<a href="logout.jsp">Log Out</a>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		<div class="main-header">
				<div class="container">
					<div class="row">
						<div class="site-branding col-md-3">
							<h1 class="site-title"><a href="index.jsp" title="UAlbany-Hangouts" rel="home"><img src="images/loggg.png" alt="logo" width="400" height="60"></a></h1>
						</div>

						

						<div class="col-md-9">
							<nav id="site-navigation" class="navbar">
								<div class="navbar-header">
									<div class="mobile-cart" ><a href="#">0</a></div>
									<button type="button" class="navbar-toggle offcanvas-toggle pull-right" data-toggle="offcanvas" data-target="#js-bootstrap-offcanvas">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
								<div class="navbar-offcanvas navbar-offcanvas-touch navbar-offcanvas-right" id="js-bootstrap-offcanvas">
									<button type="button" class="offcanvas-toggle closecanvas" data-toggle="offcanvas" data-target="#js-bootstrap-offcanvas">
									   <i class="fa fa-times fa-2x" aria-hidden="true"></i>
									</button>
									<ul class="nav navbar-nav navbar-right">
										<li class="active"><a href="full-event-schedule.html">Schedule</a></li>
										<li><a href="categories.jsp">Categories</a></li>
										<li><a href="Profile.jsp">Profile</a></li>
										</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</header>
		<section class="hero-1">
			<div class="container">
				<div class="row">
					<div class="hero-content">
						
					</div>
				</div>
			</div>
		</section>

<form action= "<%=request.getContextPath()%>/EventServlet" method ="post" onsubmit=" return check()" >

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

<input type="checkbox" name="checkboxa" id="music_a" value="Music"> <font color = "Light SlateBlue"> MUSIC </font>
<input type="checkbox" name="checkboxb" id="sports_a" value="Sports"> <font color = "Light SlateBlue"> SPORTS </font>
<input type="checkbox" name="checkboxc" id="arts_a" value="Arts"> <font color = "Light SlateBlue"> ARTS </font>

<h4 align="left">
<input type="submit" value="SUBMIT" >
</h4>
</td> </td>
</tr>
</table>
</center>

</form>


<footer id="colophon" class="site-footer">
			<div class="top-footer">
				<div class="container">
					<div class="row">
						
						<div class="col-md-8">
							<a href="#"><img src="images/footerlogo.png" alt="logo"></a>
						</div>
						<div class="col-md-4">
						
						<p>&copy; UAlbany Hangouts. ALL RIGHTS RESEVED</p>
						</div>
					</div>
					
				</div>
			</div>
			<div class="main-footer">
				<div class="container">
					<div class="row">
						<div class="footer-1">
							<div class="social clearfix">
								<h3>Stay Connected</h3>
								<ul>
									<li class="facebook">
										<a href="#">
											<i class="fa fa-facebook" aria-hidden="true"></i>
											Facebook
										</a>
									</li>
									<li class="twitter">
										<a href="#">
											<i class="fa fa-twitter" aria-hidden="true"></i>
											Twitter
										</a>
									</li>
									<li class="linkedin">
										<a href="#">
											<i class="fa fa-linkedin-square" aria-hidden="true"></i>
											LinkedIn
										</a>
									</li>
									<li class="google">
										<a href="#">
											<i class="fa fa-google-plus-square" aria-hidden="true"></i>
											Google+
										</a>
									</li>
									
								</ul>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</footer>
		

</body>
</html>