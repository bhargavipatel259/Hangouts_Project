<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HomePage</title>
</head>
<body background ="admin.jpg">
	<br />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
      <img src="admin-banner.jpg" class="img-circle" alt="Cinque Terre">
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li class="active"><a href="#">Dashboard</a></li>
      </ul>
    </div>
  </div>
</nav>

<!--  <div class="container-fluid">
    <div class="row content">
     <div class="col-sm-3 sidenav hidden-xs">
     <!--   <h2>Logo</h2>
      <ul class="nav nav-pills nav-stacked">
         <li class="active"><a href="#section1">Dashboard</a></li> 
      </ul> 
    </div> -->    
    <div class="col-sm-9">
      <div class="well">
        <h4>Dashboard</h4>
        <p>Welcome admin !</p>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
         <h4><a href="adminaddcategory.jsp">Add Category</a></h4>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4><a href="event.jsp" align="center">Existing Events</a></h4>
          </div>
        </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <h4><a href="user.jsp">User Information</a></h4>
        </div>
        </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <h4><a href="organizer.jsp">Organizer Information</a></h4>
          </div>
        </div>
        
        <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <h4><a href="categoryrequest.jsp">Request Category</a></h4>
          </div>
        </div>
       
       
        
        <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <h4><a href="reportevent.jsp">Reported Events</a></h4>
          </div>
        </div>
      </div>
     
     <form name="myForm2" method="get" action="LogoutServlet">
	<div class="col-md-4 text-center"> 
	<a href="adminlogin.jsp"><input type = "button" value="LOGOUT" class="btn btn-primary center-block"></a>
	</div>
	</form> 
     
        </div>
        
        </div>
        
        </div>
	<!--  
	<form name="myForm2" method="get" action="LogoutServlet">
	<div class="col-md-4 text-center"> 
	<a href="adminlogin.jsp"><input type = "button" value="LOGOUT" class="btn btn-primary center-block"></a>
	</div>
	</form> -->

</body>
</html>
