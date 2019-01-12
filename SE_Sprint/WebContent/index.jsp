<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>LoginPage</title>
		<link rel ="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
		<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!--  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>-->
<!--	<script src="js/jquery-3.3.1.min.js"></script> -->
    </head>
    <body>
        <div class="container">
          
            <header>
                <h1>UAlbany HangOut</h1>
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="<%=request.getContextPath()%>/loginservlet" method="post" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" > Your email </label>
                                    <input id="email" name="email" required="required" type="text" placeholder="myemail"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="mypassword" /> 
                                </p>
                                	<label for="radio1">User</label>
                                	<input type="radio" id="radio1" style="width:12px;" name="radio" value="user">&nbsp;&nbsp;
                                	<label for="radio2">Organizer</label>
                                	<input type="radio" id="radio2" style="width:12px;" name="radio" value="organizer"> 
                                <p class="Login button"> 
									<input type="submit" value="Log In"/> 
								</p>
                                <p class="login button"> 
                                   <a href="http://cookingfoodsworld.blogspot.in/" target="_blank" ></a>
								</p> 
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="<%=request.getContextPath()%>/signupservlet" method="post" autocomplete="on"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="firstname" class="uname" >Your firstname</label>
                                    <input id="firstname" name="firstname" required="required" type="text" placeholder="myfirstname" />
                                </p>
                                <p> 
                                    <label for="lastname" class="uname" >Your lastname</label>
                                    <input id="lastname" name="lastname" required="required" type="text" placeholder="mylastname" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"  > Your email</label>
                                    <input id="emailsignup" name="email" required="required" type="email" placeholder="myemail"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" >Your password </label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="mypassword"/>
                                    
                                </p>
<%
 String pass_info = (String)request.getParameter("message");
if(pass_info != null)
{out.println("<font color= red size =4px>"+ pass_info +"</font>");}
%>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" >Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="cpassword" required="required" type="password" placeholder="mypassword"/>
                                </p>
                                	<label for="radio1">User</label>
                                	<input type="radio" id="radio1" style="width:12px;" name="radio" value="user">&nbsp;&nbsp;
                                	<label for="radio2">Organization</label>
                                	<input type="radio" id="radio2" style="width:12px;" name="radio" value="organizer"> 
                                
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
        
    </body>
</html>