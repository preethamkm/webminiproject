<html>
<head>
<title>
Academic details
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
<form  action="academicin1.jsp" method="get">
<input type="text" id="textbox" name="o" placeholder="Event id" oninvalid="alert('Invalid id!!')" pattern="[A-Za-z0-9, ]+" required/><br/><br/>
<input type="text" id="textbox" name="one" placeholder="Department" oninvalid="alert('Invalid dept!!')" pattern="[A-Za-z, ]+" required/><br/><br/>
<input type="text" id="textbox" name="two" placeholder="Date DD/MM/YY" oninvalid="alert('Format: DD/MM/YYYY!!')" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" required/><br/><br/>
<input type="text" id="textbox" name="three" style="padding:30px;" placeholder="Description of event"required/>
</br>
</br>
</br>
<input type="submit" name="submit" value="Submit">
</form>
</div>
</body> 
</html>