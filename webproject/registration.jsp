<html>
<head>
<title>
enotice Registration
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
<script type="text/javascript">
<input type="text" id="textbox" required/>
</script>

</head>

<body background="https://previews.123rf.com/images/benjaminec/benjaminec1704/
benjaminec170400002/75288240-registration-form-and-a-wooden-stamp-on-grunge-background.jpg">
<div>
<br/>
<h2 style="color:white">Register Here</h2>
<form  action="regpro.jsp" method="get">
<input type="text" id="textbox"  name="one" placeholder="Enter your name" oninvalid="alert('Enter alphabet!!')" pattern="[A-Za-z, ]+" required/><br/><br/>
<input type="text" id="textbox" name="two" placeholder="enter your USN" oninvalid="alert('Invalid USN!!')" pattern="[A-Za-z0-9]{10}" required/><br/><br/>
<input type="text" id="textbox" name="three" placeholder="Enter your Phone no" oninvalid="alert('Invalid contact number!!')" pattern="[1-9]{1}[0-9]{9}" required/><br/><br/>
<input type="email" id="textbox" name="four" placeholder="Enter your email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="ex: abc@xyz.com" required/><br/><br/>
<input type="password" id="textbox" name="five" placeholder="Enter your password" pattern=".{6,}" title="Six or more characters" required/><br/><br/><br/>
<input type="submit" name="submit" value="REGISTER">
</form>
<form action="login.jsp" method="get">
<h3 style="color:white">Already a user</h3>
<input type="submit" name="submit" value="LOGIN HERE">
</form>
</div>
</body>
</html>