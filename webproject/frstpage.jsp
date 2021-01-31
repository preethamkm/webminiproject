

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Notice Board</title>
<style>
.box {
   margin:auto;
   background:#D3D3D3;
   width:400px;
   height:60px;
   border:solid black; 
}
.con{
   margin:auto;
   background:#F0F8FF;
   width:500px;
   height:300px;
   border:solid grey;
   border-radius:50px;
}
input{
padding:10px;
width:500Px;
background:grey;
border-radius:50px;
}
</style>
<script type="text/javascript">
			function getCurrentDate(){
				var curDate=new Date();
				document.getElementById("showDate").innerHTML = curDate.toString();
			}
</script>
</head>
<body background="https://wall.christianimages123.com/wp-content/uploads/2016/11/wooden-board-powerpoint-background.jpg"
 onLoad='getCurrentDate()' >
 
 <div class="box" align="center">
<h1>Online Notice Board</h1>
</div><br/><br/><br/>

<div class="con">
<h2 align="center"><i>Welcome to online notice board</i></h2>

<form action="login.jsp" method="get"><br/>
<input type="submit" name="submit" value="LOGIN">
</form>

<h1 align="center">OR</h1>

<form action="registration.jsp" method="get">
<input type="submit" name="submit" value="REGISTER">
</form>
</div><br/><br/>

<div class="section" id="contacts" align="center">
<form method="post">
	<select name="About Me">
		<option value="info">About us</option>
		<option value="name">Preetham,Rajath and Rakshith</option>
		<option value="edu">SDMIT UJIRE</option>
		<option value="name">CSE 4th year</option>
		<option value="email">kmpreethamgowda@gmail.com</option>
		<option value="contact">+91 9731996433</option>
	</select>
</form>
        <font color="white"><h1><span>Follow Me</span></h1></font>
  <div>      
  <a href="https://www.pretugowdapkm.blogspot.com" target="_blank">
  <img alt="My Blog" src="https://image.flaticon.com/icons/svg/56/56430.svg" height="100" width="100" hspace="30" />
  </a>
 </div>
<div>
<form action="admin.jsp">
<input type="submit" name="adm" value="ADMIN" />
</form>
</div>
  <marquee style="color:white" direction="left" loop="" scrollamount="12">
  <h3 id="showDate"></h3></marquee>
  </div>
    
    <div class="copyright" align="center"><br/>
    <font color="white">&copy; </font>
    <font color="white">2020 Webpage. All rights reserved.</font>
    </div>
</body>
</html>