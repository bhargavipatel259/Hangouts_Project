<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>SignIn | Hangouts</title>
<link rel="stylesheet" href="css/font.css">
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
		<script src="js/jquery-3.2.0.min.js"></script>
		<script src="js/bootstrap-slider.min.js"></script>
		<script src="js/bootstrap-select.min.js"></script>
		<script src="js/jquery.scrolling-tabs.min.js"></script>
		<script src="js/jquery.countdown.min.js"></script>
		<script src="js/jquery.flexslider-min.js"></script>
		<script src="js/jquery.imagemapster.min.js"></script>
		<script src="js/tooltip.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/featherlight.min.js"></script>
		<script src="js/featherlight.gallery.min.js"></script>
		<script src="js/bootstrap.offcanvas.min.js"></script>
		<script src="js/main.js"></script>
	
<style>
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
.section-newsletter .section-content .newsletter-form input[type="radio"]::-webkit-input-placeholder{
	color: #fff;
}
.section-newsletter .section-content .newsletter-form input[type="radio"]::-moz-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="radio"]:-ms-input-placeholder{
	color: #fff;
}

.section-newsletter .section-content .newsletter-form input[type="radio"]:-moz-placeholder{ 
	color: #fff;
}

.section-newsletter .section-content h5{
	font-size:15px;
	font-weight:700;
	color:#fff;
	margin:0 0 20px;
	font-family: 'Open Sans', sans-serif;
	
}

</style>
</head>
<body>



<header id="masthead" class="site-header fix-header header-1">

<div class="main-header">
				<div class="container">
					<div class="row">
						<div class="site-branding col-md-3">
							<h1 class="site-title"><a href="homepage.jsp" title="UAlbany-Hangouts" rel="home"><img src="logggi.png" alt="logo" width="400" height="60"></a></h1>
						</div>

					</div>
				</div>
			</div>
		</header>
		
					


<section class="section-newsletter">
			<div class="container">
				<div class="section-content">
					<h2>SignIn to go to wonderful hangouts and share your knowledge and learn something new!!</h2>
					<form action="loginservlet" method="post">
					<div class="newsletter-form clearfix">
						<input type="email" name="email" placeholder="Your Email Address"> <br><br>
					</div>
					<div class="newsletter-form clearfix">
						<input type="password" name="password" placeholder="Your Password"><br> <br>
					</div>
					<div class="newsletter-form clearfix">
		            <h5> User<input type="radio" id="radio1" style="width:12px;" name="radio" value="user">&nbsp;&nbsp; 
                       Organizer<input type="radio" id="radio2" style="width:12px;" name="radio" value="organizer">&nbsp;&nbsp; <br> <br></h5> 
					</div>
					<div class="newsletter-form clearfix">
						<input type="submit" value="Sign In"><br> <br>
					</div>
					
					<div class="newsletter-form clearfix">
						<a href="signup.jsp"><h5>Not a member yet? SignUp to explore..</h5></a> 
					</div>
					</form>
				</div>
			</div>
			
		</section>
		<h2 align="center "style="color:red"><%= (request.getAttribute("errMessage") == null) ? ""
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
						<div class="footer-1 col-md-9">
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