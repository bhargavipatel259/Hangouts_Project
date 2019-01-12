<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
   <%@page import="java.text.ParseException" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
    
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

<%String sid=(String)session.getAttribute("email");
String firstname1 = (String)session.getAttribute("firstname");
 %>


<%
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");

							          Statement st=con.createStatement();
							          ResultSet rs=st.executeQuery("select * from user_details where email='"+sid+"'");
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
                    <div class="desc"><%=email %></div>
                     </div>
         <%} %>      
            </div>
            <div class="container">
			<section class="section-editprofile">
			
			<div class="editprofile clearfix">
			<a href=editprofile.jsp style="color:black;">Edit Profile</a><br><br>
			
			</div>
			</section>
			</div>		
			  
            <div class="container">
			<section class="section-editprofile">
			
			<div class="editprofile clearfix">
			<a href=updatepassword.jsp style="color:black;">Update Password</a><br><br>
			
			</div>
			</section>
			</div>		
			
			<div class="container">
			<section class="section-editprofile">
			
			<div class="editprofile clearfix">
			<a href="addcategories.jsp" style="color:black;">Add Interested Category</a><br><br>
			
			</div>
			</section>
			</div>		
			
			<div class="container">
			<section class="section-editprofile">
			<div class="editprofile clearfix">
			<a href="removecategories.jsp" style="color:black;">Remove Interested Category</a>
			</div>
			</section>		
			</div>
			
        </div>
        
        <div class="col-md-9">
<section class="section-upcoming-events">
			<div class="container">
				<div class="row">
					<div class="section-header">
						<h2>Hangouts you are going to!</h2>
						</div>
					<div class="section-content">
					<% ResultSet rs2=st.executeQuery("select * from event_details where hangout_id in(Select hangout_id from rsvp_event where user_email='"+sid+"')");

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
								<a href="viewevent.jsp?id=<%=hangout_id%>">
								
									<img src="<%=img %>" alt="image">
									</a>
								
								<div class="info">
									<p><%=name %> </p>
							<a href="delRSVPServlet?id=<%=hangout_id %>" class="get-ticket">Cancel RSVP</a>
									
								</div>
							</li>
							
							
						</ul>
						<% } %>
					</div>
				</div>
			</div>
		</section>
		
</div>
        			<div class="col-md-3"></div>
        <div class="col-md-9">
<section class="section-upcoming-events">
			<div class="container">
				<div class="row">
					<div class="section-header">
						<h2>Recommended Hangouts</h2>
						</div>
					<div class="section-content">
					<% ResultSet rs1=st.executeQuery("select hangout_id,day,month,year,img,name,CAST(time AS char) AS col_time,venue from event_details where cate_id in (Select category_id from interested_category where email='"+sid+"') and hangout_id not in (Select hangout_id from rsvp_event where user_email='"+sid+"')");						                           
					while(rs1.next())
							                           {
							                        	  String hangout_id = rs1.getString(1);
							                        	  String day = rs1.getString(2);
							                        	  String month = rs1.getString(3);
							                        	  String year = rs1.getString(4);
							                        	  System.out.println("year"+year);
							                        	  String img = rs1.getString(5);
							                        	  String name = rs1.getString(6);
							                        	  String time = rs1.getString("col_time");
							                        	  String venue = rs1.getString(8);
							                        	 
							                        	  %>
						<ul class="clearfix">
							
							
							<li> 
								<div class="date">
									
									
										
										<span class="day"><%=day %></span>
										<span class="month"><%=month %></span>
										<span class="year"><%=year %></span>
								
								</div>
									<a href="viewevent.jsp?id=<%=hangout_id%>">
								
									<img src="<%=img %>" alt="image">
									</a>
								<div class="info">
									<p><%=name %></p>
							<a href="RSVPServlet?id=<%=hangout_id %>&firstname=<%=firstname1 %>&time=<%=time %>&name=<%=name %>&venue=<%=venue %>&day=<%=day %>&month=<%=month %>&year<%=year %>" class="get-ticket">RSVP</a>
									
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
		