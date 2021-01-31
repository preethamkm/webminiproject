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
</head>

<body background="https://images7.alphacoders.com/372/thumb-1920-372558.jpg">
<div>
<br/>
<h2 style="color:white">Enter details</h2>
<form  action="activityin1.jsp" method="get">
<input type="text" id="textbox" name="o" placeholder="Event ID" oninvalid="alert('Invalid id!!')" pattern="[A-Za-z0-9, ]+" required/><br/><br/>
<input type="text" id="textbox" name="one" placeholder="Event description" style="padding:30px;" oninvalid="alert('Invalid!!')" pattern="[A-Za-z0-9, ]+" required/><br/><br/>
<input type="text" id="textbox" name="two" placeholder="Venue" oninvalid="alert('Invalid input characters!!')" pattern="[A-Za-z0-9, ]+" required/><br/><br/>
<input type="text" id="textbox" name="three" placeholder="Date DD/MM/YY" oninvalid="alert('Format: DD/MM/YYYY!!')" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" required/><br/><br/>
<input type="text" id="textbox" name="four" placeholder="Time 24hr hh:mm" oninvalid="alert('Invalid ex:23:59 !!')" pattern="([0-1]{1}[0-9]{1}|20|21|22|23):[0-5]{1}[0-9]{1}" required/><br/><br/>
</br>
</br>
</br>
<input type="submit" name="submit" value="Submit">
</form>
</div>
</body> 
</html>