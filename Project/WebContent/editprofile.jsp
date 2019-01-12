<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%> 
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Edit Profile | Hangouts</title>
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


.section-newsletter{
	padding:90px 0;
	background:url(hero-1-img.jpg) no-repeat center center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	position:relative;
	height:70%;
}

.section-newsletter:before{
	content: "";
	background:rgba(255, 102, 0, .9);
	position:absolute;
	top:0;
	bottom:0;
	right:0;
	left:0;
}

.section-newsletter .section-content{
	text-align:center;
	position:relative;
	width:70%;
	margin:0 auto;
}

.section-newsletter .section-content h2{
	font-size:25px;
	font-weight:700;
	color:#fff;
	margin:0 0 20px;
	font-family: 'Open Sans', sans-serif;
}

.section-newsletter .section-content p{
	font-size:12px;
	line-height:18px;
	color:#fff;
	margin:0 0 30px;
	font-family: 'Open Sans', sans-serif;
}

.section-newsletter .section-content .newsletter-form input[type="email"]{
	background:none;
	color:#fff;
	font-size:15px;
	font-family: 'Open Sans', sans-serif;
	border:2px solid #fff;
	padding:12px 30px;
	border-radius:50px;
	margin:0 5px 0 0;
	width:50%;
	height:53px;
}

.section-newsletter .section-content .newsletter-form input[type="text"]{
	background:none;
	color:#fff;
	font-size:15px;
	font-family: 'Open Sans', sans-serif;
	border:2px solid #fff;
	padding:12px 30px;
	border-radius:50px;
	margin:0 5px 0 0;
	width:50%;
	height:53px;
}

.section-newsletter .section-content .newsletter-form input[type="password"]{
	background:none;
	color:#fff;
	font-size:15px;
	font-family: 'Open Sans', sans-serif;
	border:2px solid #fff;
	padding:12px 30px;
	border-radius:50px;
	margin:0 5px 0 0;
	width:50%;
	height:53px;
}

.section-newsletter .section-content .newsletter-form input[type="file"]{
	background:none;
	color:#fff;
	font-size:15px;
	font-family: 'Open Sans', sans-serif;
	text-align:center;
	border:2px solid #fff;
	padding:12px 30px;
	border-radius:50px;
	margin:0 5px 0 0;
	width:50%;
	height:53px;
}

.section-newsletter .section-content .newsletter-form input[type="radio"]{
	background:none;
	color:#fff;
	font-size:15px;
	font-family: 'Open Sans', sans-serif;
	border:2px solid #fff;
	padding:12px 30px;
	border-radius:50px;
	margin:0 5px 0 0;
	width:50%;
	height:53px;
}


.section-newsletter .section-content .newsletter-form input[type="submit"]{
	background:#fff;
	color:#ff6600;
	font-weight:700;
	font-size:18px;
	line-height:18px;
	font-family: 'Open Sans', sans-serif;
	border:none;
	padding:12px 50px;
	border-radius:50px;
	text-align:center;
	display:inline-block;
	text-transform:uppercase;
	height:53px;
}

.section-newsletter .section-content .newsletter-form input[type="submit"]:hover{
	background:#ff6600;
	color:#fff;
}

.section-newsletter .section-content .newsletter-form input[type="email"]::-webkit-input-placeholder{
	color: #fff;
}
.section-newsletter .section-content .newsletter-form input[type="email"]::-moz-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="email"]:-ms-input-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="email"]:-moz-placeholder{ 
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="password"]::-webkit-input-placeholder{
	color: #fff;
}
.section-newsletter .section-content .newsletter-form input[type="password"]::-moz-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="password"]:-ms-input-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="password"]:-moz-placeholder{ 
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="text"]::-webkit-input-placeholder{
	color: #fff;
}
.section-newsletter .section-content .newsletter-form input[type="text"]::-moz-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="text"]:-ms-input-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="text"]:-moz-placeholder{ 
	color: #fff;
}
.section-newsletter .section-content .newsletter-form input[type="file"]::-webkit-input-placeholder{
	color: #fff;
}
.section-newsletter .section-content .newsletter-form input[type="file"]::-moz-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="file"]:-ms-input-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="file"]:-moz-placeholder{ 
	color: #fff;
}


</style>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>

<% if(session.getAttribute("email")==null){
 response.sendRedirect("signin.jsp");
}%>

<% String sid=(String)session.getAttribute("email"); %>

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
		<section class="section-newsletter">
		<div class="container">
				<div class="section-content">
					<h2>Edit your profile!!!</h2>
			
		<form action="editprofileservlet" method="post">
					<div class="newsletter-form clearfix">
						<input type="text" name="firstname" placeholder="Your First Name" required> <br><br>
					</div>
					<div class="newsletter-form clearfix">
						<input type="text" name="lastname" placeholder="Your Last Name" required> <br><br>
					</div>
					<div align="center" class="newsletter-form clearfix">
						<input type="file" name="profilepic" placeholder="Your Profile Picture" required> <br> <br>
					</div>
					<div class="newsletter-form clearfix">
						<input type="submit" value="Edit Profile"><br> <br>
					</div>
					</form>
					
				</div>
			</div>
			
		</section>
		<h2 align="center" style="color:red"><%= (request.getAttribute("errMessage") == null) ? ""
			 : request.getAttribute("errMessage")  %> </h2>
	
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
		