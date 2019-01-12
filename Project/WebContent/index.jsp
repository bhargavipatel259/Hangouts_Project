<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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

		<title>Make your dream come true</title>
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
.hero-1{
	position:relative;
	background:url(hero-1-img.jpg) no-repeat center center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	height:500px;
}

.top-header .top-right ul li:first-child a{
	color:#b3b3b3;
	font-weight:500;
}
.section-event-category .section-content ul li.category-1:hover a{
	background: rgb(46,204,113,.5); 
	background: -moz-linear-gradient(left,  rgba(46,204,113,.5) 0%, rgba(27,188,155,.5) 100%);
	background: -webkit-linear-gradient(left,  rgba(46,204,113,.5) 0%,rgba(27,188,155,.5) 100%); 
	background: linear-gradient(to right,  rgba(46,204,113,.5) 0%,rgba(27,188,155,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2ecc71', endColorstr='#1bbc9b',GradientType=.5 );
}

.section-event-category .section-content ul li.category-2 a{
	background: rgb(192,57,43,.9); 
	background: -moz-linear-gradient(left, rgba(192,57,43,.9) 0%, rgba(210,77,87,.9) 100%); 
	background: -webkit-linear-gradient(left, rgba(192,57,43,.9) 0%,rgba(210,77,87,.9) 100%); 
	background: linear-gradient(to right, rgba(192,57,43,.9) 0%,rgba(210,77,87,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#c0392b', endColorstr='#d24d57',GradientType=.9 );
}

.section-event-category .section-content ul li.category-2:hover a{
	background: rgb(192,57,43,.5); 
	background: -moz-linear-gradient(left, rgba(192,57,43,.5) 0%, rgba(210,77,87,.5) 100%); 
	background: -webkit-linear-gradient(left, rgba(192,57,43,.5) 0%,rgba(210,77,87,.5) 100%); 
	background: linear-gradient(to right, rgba(192,57,43,.5) 0%,rgba(210,77,87,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#c0392b', endColorstr='#d24d57',GradientType=.5);
}

.section-event-category .section-content ul li.category-3 a{
	background: rgb(102,51,153,.9); 
	background: -moz-linear-gradient(left,  rgba(102,51,153,.9) 0%, rgba(155,89,182,.9) 100%); 
	background: -webkit-linear-gradient(left,  rgba(102,51,153,.9) 0%,rgba(155,89,182,.9) 100%); 
	background: linear-gradient(to right,  rgba(102,51,153,.9) 0%,rgba(155,89,182,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#663399', endColorstr='#9b59b6',GradientType=.9 );
}

.section-event-category .section-content ul li.category-3:hover a{
	background: rgb(102,51,153,.5); 
	background: -moz-linear-gradient(left,  rgba(102,51,153,.5) 0%, rgba(155,89,182,.5) 100%); 
	background: -webkit-linear-gradient(left,  rgba(102,51,153,.5) 0%,rgba(155,89,182,.5) 100%); 
	background: linear-gradient(to right,  rgba(102,51,153,.5) 0%,rgba(155,89,182,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#663399', endColorstr='#9b59b6',GradientType=.5 );
}

.section-event-category .section-content ul li.category-4 a{
	background: rgb(211,84,0,.9); 
	background: -moz-linear-gradient(left,  rgba(211,84,0,.9) 0%, rgba(248,148,6,.9) 100%);
	background: -webkit-linear-gradient(left,  rgba(211,84,0,.9) 0%,rgba(248,148,6,.9) 100%); 
	background: linear-gradient(to right,  rgba(211,84,0,.9) 0%,rgba(248,148,6,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d35400', endColorstr='#f89406',GradientType=.9 ); 
}

.section-event-category .section-content ul li.category-4:hover a{
	background: rgb(211,84,0,.5); 
	background: -moz-linear-gradient(left,  rgba(211,84,0,.5) 0%, rgba(248,148,6,.5) 100%);
	background: -webkit-linear-gradient(left,  rgba(211,84,0,.5) 0%,rgba(248,148,6,.5) 100%); 
	background: linear-gradient(to right,  rgba(211,84,0,.5) 0%,rgba(248,148,6,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d35400', endColorstr='#f89406',GradientType=.5 ); 
}

.section-event-category .section-content ul li.category-5 a{
	background: rgb(68,108,179,.9);
	background: -moz-linear-gradient(left,  rgba(68,108,179,.9) 0%, rgba(89,171,227,.9) 100%); 
	background: -webkit-linear-gradient(left,  rgba(68,108,179,.9) 0%,rgba(89,171,227,.9) 100%); 
	background: linear-gradient(to right,  rgba(68,108,179,.9) 0%,rgba(89,171,227,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#446cb3', endColorstr='#59abe3',GradientType=.9 ); 
}

.section-event-category .section-content ul li.category-5:hover a{
	background: rgb(68,108,179,.5);
	background: -moz-linear-gradient(left,  rgba(68,108,179,.5) 0%, rgba(89,171,227,.5) 100%); 
	background: -webkit-linear-gradient(left,  rgba(68,108,179,.5) 0%,rgba(89,171,227,.5) 100%); 
	background: linear-gradient(to right,  rgba(68,108,179,.5) 0%,rgba(89,171,227,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#446cb3', endColorstr='#59abe3',GradientType=.5 ); 
}

.section-event-category .section-content ul li.category-6 a{
	background: rgb(219,10,91,.9); 
	background: -moz-linear-gradient(left,  rgba(219,10,91,.9) 0%, rgba(210,82,127,.9) 100%); 
	background: -webkit-linear-gradient(left,  rgba(219,10,91,.9) 0%,rgba(210,82,127,.9) 100%); 
	background: linear-gradient(to right,  rgba(219,10,91,.9) 0%,rgba(210,82,127,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#db0a5b', endColorstr='#d2527f',GradientType=.9 ); 
}

.section-event-category .section-content ul li.category-6:hover a{
	background: rgb(219,10,91,.5); 
	background: -moz-linear-gradient(left,  rgba(219,10,91,.5) 0%, rgba(210,82,127,.5) 100%); 
	background: -webkit-linear-gradient(left,  rgba(219,10,91,.5) 0%,rgba(210,82,127,.5) 100%); 
	background: linear-gradient(to right,  rgba(219,10,91,.5) 0%,rgba(210,82,127,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#db0a5b', endColorstr='#d2527f',GradientType=.5 ); 
}
.section-event-category .section-content ul li.category-7 a{
	background: rgb(46,204,113,.9); 
	background: -moz-linear-gradient(left,  rgba(46,204,113,.9) 0%, rgba(27,188,155,.9) 100%);
	background: -webkit-linear-gradient(left,  rgba(46,204,113,.9) 0%,rgba(27,188,155,.9) 100%); 
	background: linear-gradient(to right,  rgba(46,204,113,.9) 0%,rgba(27,188,155,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2ecc71', endColorstr='#1bbc9b',GradientType=.9 );
}

.section-event-category .section-content ul li.category-7:hover a{
	background: rgb(46,204,113,.5); 
	background: -moz-linear-gradient(left,  rgba(46,204,113,.5) 0%, rgba(27,188,155,.5) 100%);
	background: -webkit-linear-gradient(left,  rgba(46,204,113,.5) 0%,rgba(27,188,155,.5) 100%); 
	background: linear-gradient(to right,  rgba(46,204,113,.5) 0%,rgba(27,188,155,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2ecc71', endColorstr='#1bbc9b',GradientType=.5 );
}

.section-event-category .section-content ul li.category-8 a{
	background: rgb(192,57,43,.9); 
	background: -moz-linear-gradient(left, rgba(192,57,43,.9) 0%, rgba(210,77,87,.9) 100%); 
	background: -webkit-linear-gradient(left, rgba(192,57,43,.9) 0%,rgba(210,77,87,.9) 100%); 
	background: linear-gradient(to right, rgba(192,57,43,.9) 0%,rgba(210,77,87,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#c0392b', endColorstr='#d24d57',GradientType=.9 );
}

.section-event-category .section-content ul li.category-8:hover a{
	background: rgb(192,57,43,.5); 
	background: -moz-linear-gradient(left, rgba(192,57,43,.5) 0%, rgba(210,77,87,.5) 100%); 
	background: -webkit-linear-gradient(left, rgba(192,57,43,.5) 0%,rgba(210,77,87,.5) 100%); 
	background: linear-gradient(to right, rgba(192,57,43,.5) 0%,rgba(210,77,87,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#c0392b', endColorstr='#d24d57',GradientType=.5);
}

.section-event-category .section-content ul li.category-9 a{
	background: rgb(102,51,153,.9); 
	background: -moz-linear-gradient(left,  rgba(102,51,153,.9) 0%, rgba(155,89,182,.9) 100%); 
	background: -webkit-linear-gradient(left,  rgba(102,51,153,.9) 0%,rgba(155,89,182,.9) 100%); 
	background: linear-gradient(to right,  rgba(102,51,153,.9) 0%,rgba(155,89,182,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#663399', endColorstr='#9b59b6',GradientType=.9 );
}

.section-event-category .section-content ul li.category-9:hover a{
	background: rgb(102,51,153,.5); 
	background: -moz-linear-gradient(left,  rgba(102,51,153,.5) 0%, rgba(155,89,182,.5) 100%); 
	background: -webkit-linear-gradient(left,  rgba(102,51,153,.5) 0%,rgba(155,89,182,.5) 100%); 
	background: linear-gradient(to right,  rgba(102,51,153,.5) 0%,rgba(155,89,182,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#663399', endColorstr='#9b59b6',GradientType=.5 );
}

.section-event-category .section-content ul li.category-10 a{
	background: rgb(211,84,0,.9); 
	background: -moz-linear-gradient(left,  rgba(211,84,0,.9) 0%, rgba(248,148,6,.9) 100%);
	background: -webkit-linear-gradient(left,  rgba(211,84,0,.9) 0%,rgba(248,148,6,.9) 100%); 
	background: linear-gradient(to right,  rgba(211,84,0,.9) 0%,rgba(248,148,6,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d35400', endColorstr='#f89406',GradientType=.9 ); 
}

.section-event-category .section-content ul li.category-10:hover a{
	background: rgb(211,84,0,.5); 
	background: -moz-linear-gradient(left,  rgba(211,84,0,.5) 0%, rgba(248,148,6,.5) 100%);
	background: -webkit-linear-gradient(left,  rgba(211,84,0,.5) 0%,rgba(248,148,6,.5) 100%); 
	background: linear-gradient(to right,  rgba(211,84,0,.5) 0%,rgba(248,148,6,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d35400', endColorstr='#f89406',GradientType=.5 ); 
}

.section-event-category .section-content ul li.category-11 a{
	background: rgb(68,108,179,.9);
	background: -moz-linear-gradient(left,  rgba(68,108,179,.9) 0%, rgba(89,171,227,.9) 100%); 
	background: -webkit-linear-gradient(left,  rgba(68,108,179,.9) 0%,rgba(89,171,227,.9) 100%); 
	background: linear-gradient(to right,  rgba(68,108,179,.9) 0%,rgba(89,171,227,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#446cb3', endColorstr='#59abe3',GradientType=.9 ); 
}

.section-event-category .section-content ul li.category-11:hover a{
	background: rgb(68,108,179,.5);
	background: -moz-linear-gradient(left,  rgba(68,108,179,.5) 0%, rgba(89,171,227,.5) 100%); 
	background: -webkit-linear-gradient(left,  rgba(68,108,179,.5) 0%,rgba(89,171,227,.5) 100%); 
	background: linear-gradient(to right,  rgba(68,108,179,.5) 0%,rgba(89,171,227,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#446cb3', endColorstr='#59abe3',GradientType=.5 ); 
}

.section-event-category .section-content ul li.category-12 a{
	background: rgb(219,10,91,.9); 
	background: -moz-linear-gradient(left,  rgba(219,10,91,.9) 0%, rgba(210,82,127,.9) 100%); 
	background: -webkit-linear-gradient(left,  rgba(219,10,91,.9) 0%,rgba(210,82,127,.9) 100%); 
	background: linear-gradient(to right,  rgba(219,10,91,.9) 0%,rgba(210,82,127,.9) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#db0a5b', endColorstr='#d2527f',GradientType=.9 ); 
}

.section-event-category .section-content ul li.category-12:hover a{
	background: rgb(219,10,91,.5); 
	background: -moz-linear-gradient(left,  rgba(219,10,91,.5) 0%, rgba(210,82,127,.5) 100%); 
	background: -webkit-linear-gradient(left,  rgba(219,10,91,.5) 0%,rgba(210,82,127,.5) 100%); 
	background: linear-gradient(to right,  rgba(219,10,91,.5) 0%,rgba(210,82,127,.5) 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#db0a5b', endColorstr='#d2527f',GradientType=.5 ); 
}

</style>
</head>
<body>


<sql:setDataSource
	var="ds"
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/ualbanyhangouts"
	user= "icsi518"
	password= "secretICSI518"
	/>
	<sql:query var="showcategories" dataSource="${ds}">
	SELECT * FROM `categories`;

	
	</sql:query>




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
									<a href="signin.jsp">Sign In</a>
								</li>
								<li>
									<a href="signup.jsp">Sign Up</a>
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
						<h1 class="hero-title">Make Your Dream Come True</h1>
						<p class="hero-caption">Hangout with people having same interests as you</p>
						
					</div>
				</div>
			</div>
		</section>
		
		<section class="section-event-category">
			<div class="container">
				<div class="row">
					<div class="section-header">
						<h2>Hangouts by Categories</h2>
					</div>
					<div class="section-content">
						<ul class="row clearfix">
						
						<c:forEach var="categories" items="${showcategories.rows}">
							
							<li class="category-<c:out value="${categories.category_id}"></c:out> col-sm-4">
							
							<img src="<c:out value="${categories.category_pic}"></c:out>" alt="image" name="category1" >
								<a href="signin.jsp"><span><c:out value="${categories.category_name}"></c:out></span></a>
							

							</li>
							
							</c:forEach>
										</div>
				</div>
			</div>
		</section>
		
		
		
		
		<section class="section-stats">
			<div class="container">
				<div class="row">
					<div class="section-content">
						<ul class="row clearfix">
							<li class="col-sm-4">
							<%
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");

							          Statement st=con.createStatement();
							          ResultSet rs=st.executeQuery("select COUNT(hangout_id) from event_details");
							                           while(rs.next())
							                           {
							                        	  String events = rs.getString(1);
							                        	  %>
								<span class="count"><%=events%></span>
								<%} %>
								<hr>
								<p>Events Active</p>
							</li>
							<li class="col-sm-4">
							<% ResultSet rs1=st.executeQuery("select COUNT(email) from user_details");
	                           while(rs1.next())
	                           {
	                        	  String events = rs1.getString(1);
	                        	  %>
								<span class="count"><%=events %></span>
								<%} %>
								<hr>
								<p>Active User</p>
							</li>
							<li class="col-sm-4">
							<% ResultSet rs2=st.executeQuery("select COUNT(user_email) from rsvp_event");
	                           while(rs2.next())
	                           {
	                        	  String events = rs2.getString(1);
	                        	  %>
								<span class="count"><%=events %></span>
								<%} %>
															<hr>
								<p>RSVP</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		
		
		
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