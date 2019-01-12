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

		<title>Hangouts</title>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
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
.container1{
	height=10px;
	width=100%;
}
.row1{
	text-align=center;
	color:orange;
}
.section-upcoming-events .section-content ul li{
	width:33.333333%;
	float:center;
	position:relative;
}
p {
  text-align: center;
  font-size: 60px;
  margin-top:80px;
  margin-left:1000px;
}
</style>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">


<script>
<%
String hangout_id = request.getParameter("id");
String firstname1 = (String)session.getAttribute("firstname");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
Statement st=con.createStatement();
  ResultSet rs59=st.executeQuery("select month,day,year,CAST(time AS char) AS col_time from event_details where hangout_id='"+hangout_id+"'");
   while(rs59.next())
   {
	  String month = rs59.getString(1);
	  String day = rs59.getString(2);
	  String year = rs59.getString(3);
	  String time = rs59.getString("col_time");
%>
var countDownDate = new Date("<%=month%> <%=day%>, <%=year%> <%=time%>").getTime();
<%}%>
//Update the count down every 1 second
var x = setInterval(function() {
 // Get todays date and time
 var now = new Date().getTime();
 
 // Find the distance between now an the count down date
 var distance = countDownDate - now;
 
 // Time calculations for days, hours, minutes and seconds
 var days = Math.floor(distance / (1000 * 60 * 60 * 24));
 var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
 var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
 var seconds = Math.floor((distance % (1000 * 60)) / 1000);
 
 // Output the result in an element with id="demo"
 document.getElementById("demo").innerHTML = days + "d " + hours + "h "
 + minutes + "m " + seconds + "s ";
 
 // If the count down is over, write some text 
 if (distance < 0) {
     clearInterval(x);
     document.getElementById("demo").innerHTML = "EXPIRED";
 }
}, 1000);
</script>
</head>
<body>

	<% if(session.getAttribute("email")==null){
 response.sendRedirect("signin.jsp");
}%>



<%
String sid=(String)session.getAttribute("email");
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
									<%
																          ResultSet rs50=st.executeQuery("select hangout_id,user_email from report_event where hangout_id='"+hangout_id+"' and user_email='"+sid+"' ");
			                           if(rs50.next())
			                           {
			                        	  
									%>
									<li> <a href="retracteventservlet?id=<%=hangout_id%>">Retract the report</a>
									<%} 
									else{%>
										<li> <a href="reporteventservlet?id=<%=hangout_id%>">Report this hangout</a>
										<%} %>
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
		<%
							          ResultSet rs=st.executeQuery("select name,img from event_details where hangout_id='"+hangout_id+"' ");
							                           while(rs.next())
							                           {
							                        	  String name = rs.getString(1);
							                        	  String img = rs.getString(2);
							                        	  							                           
%>
<center>
<div class="section-header">
	<h2 align="center"><%=name %></h2>
</div>
</center>
<section class="section-upcoming-events">
	<div class="container">
		<div class="row">
			<div class="section-content">
				<ul class="clearfix">


					<li>
						<img src=<%=img %>>
						<div class="info">
							<%} %>			
							<%
							
							
							
							
							ResultSet rs109 = st.executeQuery("select * from rsvp_event where user_email='"+sid+"' and hangout_id="+hangout_id);
								if(rs109.next()){
							%>
							<a href="delRSVPServlet?id=<%=hangout_id %>" class="get-ticket">Cancel RSVP</a>
							<%}
								else{ %>

								<%ResultSet rs1=st.executeQuery("select hangout_id,day,month,year,img,name,CAST(time AS char) AS col_time,venue from event_details where cate_id in (Select category_id from interested_category where email='"+sid+"') and hangout_id not in (Select hangout_id from rsvp_event where user_email='"+sid+"')");						                           
								if(rs1.next())
		                           {
		                        	  String day = rs1.getString(2);
		                        	  String month = rs1.getString(3);
		                        	  String year = rs1.getString(4);
		                        	  String img = rs1.getString(5);
		                        	  String name = rs1.getString(6);
		                        	  String time = rs1.getString("col_time");
		                        	  String venue = rs1.getString(8);
	 %>
								
								
								<a href="RSVPServlet?id=<%=hangout_id %>&firstname=<%=firstname1 %>&time=<%=time %>&name=<%=name %>&venue=<%=venue %>&day=<%=day %>&month=<%=month %>&year=<%=year %>" class="get-ticket">RSVP</a>
								<%} %>
								<%} %>		
							</div>
								
													

					</li>
					
	
					<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<h3 align=center>
						<p id="demo"></p></h3>


					</li>
				</ul>
			</div>
			
		</div>
	</div>
</section>

<center>
<div class="container">
<div class="col-md-4">
		<% 
			ResultSet rs15=st.executeQuery("select user_email from like_event where user_email='"+sid+"' and hangout_id='"+hangout_id+"' ");
			if(rs15.next())
			{
			%> <a href="unlikeeventservlet?id=<%=hangout_id%>"><i class="fas fa-thumbs-down fa-4x"></i>
	
			<%}
			else{
			%>	
			<a href="likeeventservlet?id=<%=hangout_id%>"><i class="fas fa-thumbs-up fa-4x"></i>
			<%} %>




			<%  ResultSet rs11=st.executeQuery("select count(user_email) from like_event where hangout_id='"+hangout_id+"' ");
							                           while(rs11.next())
							                           {
							                        	  String number = rs11.getString(1);
				%>


			<%=number %>

			<%} %>
			</a>
</div>
</div>
</center>
<br/>
<br/>
<%  ResultSet rs01=st.executeQuery("select Description, day, month, year, CAST(time AS char) AS col_time, venue, organizer_email from  event_details where hangout_id='"+hangout_id+"' ");
							                           while(rs01.next())
							                           {
							                        	  String description = rs01.getString(1);
							                        	  String date = rs01.getString(2);
							                        	  String month = rs01.getString(3);
							                        	  String year = rs01.getString(4);
							                        	  String time = rs01.getString("col_time");
							                        	  String venue = rs01.getString(6);
							                        	  String organizer_email = rs01.getString(7);
	%>


<div class="section-content">
	<div class="col-md-3">
	<h3>Description</h3>
	</div>
	<div class="col-md-9">
		<h3><%=description %></h3>
	</div>
</div>

<div class="section-content">
	<div class="col-md-3">
	<h3>Date</h3>
	</div>
	<div class="col-md-9">
		<h3><%=date %>-<%=month %>-<%=year %></h3>
	</div>
</div>
<div class="section-content">
	<div class="col-md-3">
	<h3>Time</h3>
	</div>
	<div class="col-md-9">
	<h3><%=time %></h3>
	</div>
</div>

<div class="section-content">
	<div class="col-md-3">
	<h3>Venue</h3>
	</div>
	<div class="col-md-9">
		<h3><%=venue %></h3>
	</div>
</div>
<div class="section-content">
	<div class="col-md-3">
<h3>Contact Organizer</h3>
	</div>
	<div class="col-md-9">
		<h3><%=organizer_email %></h3>
	</div>
</div>



<%} %>
		
	
<%   ResultSet rs2=st.executeQuery("select count(user_email) from rsvp_event where hangout_id='"+hangout_id+"'");
while(rs2.next())
{
	  String count = rs2.getString(1);
%>
	
	
<div class="section-content">
	<div class="col-md-3">
	<h3>Number of RSVP's</h3>
	</div>
	<div class="col-md-9">
		<h3><%=count %></h3>
	</div>
</div>
	
	
		
<%} %>

<div class="section-content">
	<div class="col-md-12">
	<h3>User Details</h3>
			</div>
<%   ResultSet rs4=st.executeQuery("select user_email from rsvp_event where hangout_id='"+hangout_id+"'");
while(rs4.next())
{
	  String email = rs4.getString(1);
	  
%>

	<div class="col-md-3"></div>
	<div class="col-md-9">
	<h3>	<%=email %><br/></h3>
	</div>	
			<%} %>
			</div>
		
	<div class="section-content">
	<div class="col-md-3">
	<h3>Add Review</h3>
	</div>
	<div class="col-md-9">
	<form action="addreviewservlet" method="post">
	<textarea rows="5" columns="150" placeholder="Add Reviews" name="review" required></textarea>&nbsp;&nbsp;<br/>
	<input type="hidden" name="hangout_id" value="<%=hangout_id %>">
	<input type="submit" value="Submit">
	</form>
	</div>
	</div>
	<br/>
	<br/>
	<br/>
<div class="section-content">
<div class="col-md-12"><h3>Reviews</h3></div>
</div>
	
<%ResultSet rs87=st.executeQuery("select email,review from review where hangout_id='"+hangout_id+"'");
while(rs87.next())
{
	  String useremail = rs87.getString(1);
		String review = rs87.getString(2);
	  
%>
<br/>
<br/>
	<div class="section-content">
	<div class="col-md-3">
	<h4><b><%=useremail %></b></h4>
	
	</div>
	<div class="col-md-9">
	<h4><%=review %></h4><br/>
	</div>
	<%} %>
 	</div>	
		
	</body>
</html>