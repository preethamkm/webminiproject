<html>
<head>
<title>
enotice login
</title>
<style>
div{
width:450px;
padding:50px;
margin:auto;
font-size:20px;
}
input{
padding:10px;
width:400Px;
}
</style>


</head>
<body background="https://i.ytimg.com/vi/oSxoIPSzAQ8/maxresdefault.jpg">
<div>
<h3 style="color:white">Login Here</h3>
<form action="loginpro.jsp" method="get">
<input type="text" id="textbox" name="one" placeholder="Enter your USN" oninvalid="alert('Invalid USN!!')" pattern="[A-Za-z0-9]{10}" required/><br/><br/>
<input type="password" id="textbox" name="two" placeholder="Enter your password" required/></br></br></br></br>
<input type="submit" name="submit" value="LOGIN">
</form>
<form action="registration.jsp" method="get">
<h3 style="color:blue">OR</h3>
<input type="submit" name="submit" value="REGISTER HERE">
</form>
</div>
</body>