<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
       <title>Profile </title>
		<link rel ="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
		<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!--  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!--  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>-->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!--  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>-->

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<style>

html,body,h1,h3,h4,h5 {font-family: "Open Sans", sans-serif}
body{background-img: url(bg.jpg);}
</style>
</head>
<body>    
    
   <div class="container">
           <header>
            <font color="black"><center><h1>UAlbany Hangout</h1></center></font>
 
  <div class="w3-container">
  <div class="w3-bar w3-light-grey w3-right w3-xlarge" style="opacity:0.6;">
  
  <button class="w3-button w3-right w3-xlarge"></button>
  <div class="w3-dropdown-hover w3-right w3-xlarge">
  <a href="#" class="w3-bar-item w3-button w3-right w3-xlarge"><i class="fa fa-sign-in"></i></a>
      <div class="w3-dropdown-content w3-bar-block w3-card-4 w3-right">
        <a href="<%=request.getContextPath()%>/ProfileSetting.jsp" class="w3-bar-item w3-button w3-right">Profile Setting</a>
        <a><form action="<%=request.getContextPath()%>/logout" class="w3-bar-item w3-button w3-right"><input type="submit" value="Logout"></form></a>
 
        </div>
    <a href="#" class="w3-bar-item w3-button w3-right"><i class="fa fa-search"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-right"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-bar-item w3-button w3 w3-right"><i class="fa fa-home"></i></a>
      
    </div>
  </div>
</div>  		
    </header>   
            
 <div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <div class="w3-card w3-round w3-white">
  <div class="w3-row">
  
    <div class="w3-col m3">
      
      
        <div class="w3-container">
         <h4 class="w3-center">My Profile</h4>
        <!--  <p class="w3-center"><img src="css/profile.png" class="w3-circle" style="height:106px;width:106px" alt="profile"></p> -->
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Student, Ulbany</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> Albany, USA</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> April 1, 1990</p>
        </div>
      </div>
      <br>
      </div>
      <%HttpSession sessionb= request.getSession();
      String email = (String)sessionb.getAttribute("email");
      String radio = (String)sessionb.getAttribute("radio");
      System.out.println(email+"from profile.jsp");
      System.out.println(radio);
      %>
     <img src="ProfileServlet" height="150px" width="150px" alt="ProfilePic">     
     
     <a href="<%=request.getContextPath()%>/Event.jsp"><b>Create Event</b></a>
     <a href="<%=request.getContextPath()%>/ViewEventServlet"><b> View Events</b></a>
     
     
              
      <br>
      
      <!-- Interests --> 
      <div class="w3-card w3-round w3-white w3-hide-small">
        <div class="w3-container">
          <h2>Interests</h2>
          
          <form action="" method="get">
  <input type="checkbox" name="Music" value="Bike"> Music<br>
  <input type="checkbox" name="Arts" value="Car"> Arts<br>
  <input type="checkbox" name="sports" value="Bike"> Sports<br>
  <br><br>
  <input type="submit" value="Submit">
</form>
          
            
        </div>
      </div>
      <br>
            
            

   

    

    <div class="search-text"> 

       <div class="container">

         <div class="row text-center">
           <div class="form">
                <form id="search-form" class="form-search form-horizontal">
                    <input type="text" class="input-search" >
                    <button type="submit" class="btn-search">Search</button>
                </form>
            </div>
          </div>         
       </div>     
	</div>
     <div class="container">
       <div class="row text-center">
                 <div class="col-md-6 col-sm-6 col-xs-12">
                  <ul class="list-inline">

                               <li>

                                    <a href="#"><i class="fa fa-facebook fa-2x"></i></a>

                               </li>

                           

                               <li>

                                    <a href="#"><i class="fa fa-github fa-2x"></i></a>

                               </li>

                                

                               <li>

                                    <a href="#"><i class="fa fa-linkedin fa-2x"></i></a>

                               </li>

                               

                                

                               <li>

                                    <a href="#"><i class="fa fa-google-plus fa-2x"></i></a>

                              </li>

                              

                     </ul>

                   </div>

           

                 <div class="col-md-6 col-sm-6 col-xs-12">

                  <ul class="menu list-inline">

                             

                         <li>

                            <a href="#"> Home </a>

                          </li>

                               

                          <li>

                             <a href="#"> About US </a>

                          </li>

                              

                          <li>

                            <a href="#">Contact Us</a>

                         </li>

               

                 </ul>

               </div>

           

           

           </div> 

        </div>

    

    

    

    

    </div>
            
            </div>
       
    </body>
</html>