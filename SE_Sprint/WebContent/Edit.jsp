<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import = "java.io.PrintWriter,javax.servlet.http.HttpSession,bean.Eventbean,java.util.List,javax.servlet.ServletRequest"  pageEncoding="ISO-8859-1"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Events</title>
<script type="text/javascript">
function check(){
var title= document.getElementById("titlea").value;	
var area= document.getElementById("writearea").value;
var checkboxa=document.getElementById("music_a").value;
var checkboxb=document.getElementById("sports_a").value;
var checkboxc=document.getElementById("arts_a").value;

var date = document.getElementById("dat").value;
var time = document.getElementById("tim").value;
var venue =document.getElementById("ven").value;

if (title==null || title=="" )
{
if(area=null || area==""){
	alert("Title and Description Cannot be blank");
	return false;
   }
else{
alert("Title Cannot be blank");
return false;
}
}
else if(area==null || area=="")
{
alert("Description cannot be blank");
return false;
}

//<!--checking for checkbox using jQuery -->
} 

</script>

</head>
<body>

<style>
 body {
    background-image:url(bg.jpg);	 
}
div {
	width: 35%;
    padding: 10px;
    border: 5px solid black;
}
table{
	padding: 20px;
    border: 5px solid black;
}
</style>
<body>
<br>
<a href="index.jsp">Back to Home Page</a>

<center>
<div><h1>

<font size = "5" color = "SlateBlue"> CREATE EVENT </font>

</h1></div>
<br>

<form  action= "<%=request.getContextPath()%>/UpdateEventServlet" method ="post" onsubmit=" return check()" >
  <table>

<tr><td height="50"> 
<font color = "Light SlateBlue"> TITLE: </font>
<td height="30">
<%
if(session.getAttribute("email")== null){
  response.sendRedirect("login.jsp");
}
 response.setContentType("text/html");  
HttpSession sessionx =request.getSession();
List<Eventbean> l= (List)sessionx.getAttribute("mast");
int eventid=0;
String date= null;
String speaker= null;
String speakerinfo= null;
String textpart= null;
String time= null;
String title= null;
String venue= null; 
int first =0;
int second=0;
int day= 0;
int month=0;
int year=0;
for(Eventbean e:l)
{ 	 
eventid = e.getEventid();
date = e.getDate();
speaker = e.getSpeaker();
speakerinfo =e.getSpeakerinfo();
textpart =e.getTextpart();
time = e.getTime();
title =e.getTitle();
venue =e.getVenue();

System.out.println("--------------------------Edit.jsp-----------------------------------");
System.out.println(eventid);
System.out.println(date);
System.out.println(speaker);
System.out.println(speakerinfo);
System.out.println(textpart);
System.out.println(time);
System.out.println(title);
System.out.println(venue);

String[] parts = time.split(":"); //returns an array with the 2 parts
String firstPart = parts[0];
String secondPart =parts[1]; 
 first = Integer.parseInt(firstPart);
 second =Integer.parseInt(secondPart);
 String[] dates = date.split("-"); //returns an array with the 2 parts
  year = Integer.parseInt(dates[0]);
  day = Integer.parseInt(dates[1]);
  month = Integer.parseInt(dates[2]);
}
PrintWriter outwrite = response.getWriter();
HttpSession sessionb = request.getSession();
sessionb.setAttribute("eveid",eventid);
%>


<input autofocus type="text" name="title" id="titlea" placeholder= "Enter Event Title" value ="<%out.print(title);%>" >
</td>
</tr>
<tr><td height="30">

<font color = "Light SlateBlue"> DESCRIPTION: </font>
<td>
<textarea rows="5" cols="50" maxlength="250" id="writearea" name="textpart" placeholder="Enter text here...">
<%out.print(textpart);%>
</textarea>
</td>
</tr>
<tr>
<td height="30">

<font color = "Light SlateBlue"> DATE: </font>

<td height="30">
<input type="date" id="dat" name = "dats" value= "<%out.print(year+"-"+ day+ "-"+ month);%>"/>
</td>
</tr>

<tr>
<td>
<font color = "Light SlateBlue"> TIME: </font>
<td>
<input type="time" id="tim" name="tims" value="<%out.print(first+":"+second);%>"/>
</td>
</tr>

<tr>
<td>
<font color = "Light SlateBlue"> VENUE: </font>
<td>
<input type="text" name= "venue" id="ven" placeholder="Enter venue of your Event" value= "<%out.print(venue);%>"/>
</td>
</tr>

<tr>
<td>
<font color = "Light SlateBlue"> Orator: </font>
<td>
<input type="text" name= "speaker" id="spk" placeholder="Enter Orator's Name" value= "<%out.print(speaker);%>"></input>
</td>
</tr>
<tr>
<td>
<font color = "Light SlateBlue"> ORATOR'S INFO: </font>

<td>
<textarea rows="5" cols="35" maxlength="150" name= "speakerinfo" id="spkinfo" placeholder="Enter Orator's Info ">
<%out.print(speakerinfo);%>
</textarea>
</td>
</tr>
<tr>
<td><td>

<input type="checkbox" name="checkboxa" id="music_a" value="Music"> <font color = "Light SlateBlue"> MUSIC </font>
<input type="checkbox" name="checkboxb" id="sports_a" value="Sports"> <font color = "Light SlateBlue"> SPORTS </font>
<input type="checkbox" name="checkboxc" id="arts_a" value="Arts"> <font color = "Light SlateBlue"> ARTS </font>

<h4 align="left">
<input type="submit" value="Update" >
</h4>
</tr>
</table>
</center>
</form>
</body>
</html>