<html>
<head>
<title>
Scholarship details
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

</script>

</head>

<body background="https://images7.alphacoders.com/372/thumb-1920-372558.jpg">
<div>
<br/>
<h2 style="color:white">Enter details</h2>
<form  action="scholarshipin1.jsp" method="get">
<input type="text" id="textbox" name="one" placeholder="Scholarship Name" style="padding:30px;" oninvalid="alert('Invalid!!')" pattern="[A-Za-z0-9, ]+" required/><br/><br/>
<input type="text" id="textbox" name="two" placeholder="Active Date: DD/MM/YY f" oninvalid="alert('Format: DD/MM/YYYY!!')" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" required/><br/><br/>
<input type="text" id="textbox" name="three" placeholder="Expire Date: DD/MM/YY f" oninvalid="alert('Format: DD/MM/YYYY!!')" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" required/><br/><br/>
<input type="text" id="textbox" name="four" placeholder="Document Required" style="padding:30px;" oninvalid="alert('Invalid!!')" pattern="[A-Za-z0-9, ]+" required/><br/><br/>
</br>
</br>
</br>
<input type="submit" name="submit" value="Submit">
</form>
</div>
</body> 
</html>