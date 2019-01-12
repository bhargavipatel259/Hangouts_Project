<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%> 
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Organizer | Hangouts</title>
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
.section-newsletter{
	padding:90px 0;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	position:relative;
	height:100%;
}


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

.section-newsletter .section-content h5{
	font-size:15px;
	font-weight:700;
	color:#fff;
	margin:0 0 20px;
	font-family: 'Open Sans', sans-serif;
	
}



</style>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<%
String sid=(String)session.getAttribute("email");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");

							          Statement st=con.createStatement();
							          ResultSet rs=st.executeQuery("select * from organizer_details where email='"+sid+"'");
							                           while(rs.next())
							                           {
							                        	  String email = rs.getString(1);
							                        	  String firstname = rs.getString(3);
							                        	  String lastname = rs.getString(4);
							                        	  String profile_pic = rs.getString(5);
							                        	  %>

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
									<li><a href="try.jsp">Create new hangout</a></li>
									
										<li><a href="Profileorganizer.jsp">Profile</a></li>
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
		

<div class="container">
	<div class="row">
		<div class="col-md-3">

            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="alt.png" src="<%=profile_pic %>">
                </div>
                <div class="info">
                    <div class="title">
                        <a><%=firstname %> <%=lastname %></a>
                    </div>
                    <div class="desc"><%=email %>
                    </div>
                </div>
            </div>
                     
         <%} %>      
                
         
         <div class="container">
			<section class="section-editprofile">
			
			<div class="editprofile clearfix">
			<a href=editorgprofile.jsp style="color:black;">Edit Profile</a><br><br>
			
			</div>
			</section>
		</div>		
			  
        <div class="container">
			<section class="section-editprofile">
			
				<div class="editprofile clearfix">
					<a href=updateorgpassword.jsp style="color:black;">Update Password</a><br><br>
			
				</div>
			</section>
		</div>	
		<div class="container">
			<section class="section-editprofile">
			
				<div class="editprofile clearfix">
					<a href=requestcat.jsp style="color:black;">Request for new category</a><br><br>
			
				</div>
			</section>
		</div>		
<div class="container">
			<section class="section-editprofile">
			
				<div class="editprofile clearfix">
					<a href=MessagePage.jsp style="color:black;">Message Admin</a><br><br>
			
				</div>
			</section>
		</div>	

<div class="container">
			<section class="section-editprofile">
			
				<div class="editprofile clearfix">
					<a href="ViewAllEventReportServlet" style="color:black;">View all reports</a><br><br>
			
				</div>
			</section>
		</div>	
<div class="container">
			<section class="section-editprofile">
			
				<div class="editprofile clearfix">
					<a href="ReportServlet" style="color:black;">Upload Event Report</a><br><br>
			
				</div>
			</section>
		</div>	

</div>

<div class="col-md-9">
	<section class="section-upcoming-events">
		<div class="container">
			<div class="row">
				<div class="section-header">
					<h2>Hangouts you organized!</h2>
				</div>
				
				<div class="section-content">
				<% ResultSet rs2=st.executeQuery("select * from event_details where organizer_email='"+sid+"'");
				 while(rs2.next())
                 {
              	  String hangout_id = rs2.getString(1);
              	  String day = rs2.getString(6);
              	  String month = rs2.getString(7);
              	  String year = rs2.getString(8);
              	  String img = rs2.getString(5);
              	  String name = rs2.getString(2);
              	
											%>
					<ul class="clearfix">
						<li>
							<div class="date">
								<span class="day"><%=day %></span>
								<span class="month"><%=month %></span>
								<span class="year"><%=year %></span>
								
							</div>
							
							<a href="viewevento.jsp?id=<%=hangout_id%>">
								
									<img src="<%=img %>" alt="image">
									</a>
								
							<div class="info">
								<p><%=name %> </p>
									
							</div>
						</li>
					</ul>	
											
				<% } %>
								
				</div>
			</div>
		</div>
	</section>
</div>		
	</div>
	</div>
	
	
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