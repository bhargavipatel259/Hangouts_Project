<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>ProfileOrganizer</title>
<link rel ="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
		<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<style>

html,body,h1,h3,h4,h5 {font-family: "Open Sans", sans-serif}
body{background-img: url(bg.jpg);}
</style>
<style type="text/css">
   
    body{        
        padding-top: 60px;
        padding-bottom: 40px;
    }
    .container{
        width: 80%;
        margin: 0 auto; /* Center the DIV horizontally */
    }
    .fixed-header, .fixed-footer{
        width: 100%;
        position: fixed;        
        background: #333;
        padding: 10px 0;
        color: #fff;
    }
    .fixed-header{
        top: 0;
    }
    .fixed-footer{
        bottom: 0;
    }    
    /* Some more styles to beutify this example */
    nav a{
        color: #fff;
        text-decoration: none;
        padding: 7px 25px;
        
    }
    .container p{
          }
</style>
</head>
<body>
    <div class="fixed-header">
        <div class="container">
            <nav>
                
  <div class="w3-bar  w3-right w3-xlarge" style="opacity:0.6;">
  
  <button class="w3-button w3-right w3-large"></button>
  <font color:"white"><h9>UAlbany Hangout</h9></font>
  <div class="w3-dropdown-hover w3-right w3-large">
  <a href="#" class="w3-bar-item w3-button w3-right "><i class="fa fa-sign-in"></i></a>
      <div class="w3-dropdown-content w3-bar-block w3-card-4 w3-right">
        <a href="setting.jsp" class="w3-bar-item w3-button w3-right">Setting</a>
        <a href="logout.jsp" class="w3-bar-item w3-button w3-right">Logout</a>
        </div>
    <a href="#" class="w3-bar-item w3-button w3-right"><i class="fa fa-search"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-right"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-bar-item w3-button w3 w3-right"><i class="fa fa-home"></i></a>
      
    </div>
  </div>
</div>  		
            </nav>
        </div>
   
    <div class="container">
    
    <div class="w3-container">
         <h4 class="w3-center">My Profile</h4>
         <p class="w3-center"><img src="css/profile.png" class="w3-circle" style="height:106px;width:106px" alt="profile"></p><br><br>
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Student, Ulbany</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> Albany, USA</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> April 1, 1990</p>
         <br><br><br>
        </div>
      </div>
      <br>
     
     
      <br>
      
      <!-- Interests --> 
      <div class="w3-card w3-round w3-white w3-hide-small">
        <div class="w3-container">
        <br><br><br><br><br>
          <input type="button" onclick="location.href='interests.jsp';" value="Edit your intrest"/> 
          <input type="button" onclick="location.href='ViewEvents.jsp';" value="Edit Event"/>
          <br>
          <br>
          <br>
          <br>
          <br><br><br>
    	 </div>    
    <div class="fixed-footer">
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