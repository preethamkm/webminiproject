<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-NOTICE</title>
<style>
.delete {
  width: 100px%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.box {
   margin:auto;
   width:400px;
   height:60px;
   border:solid red; 
   border-radius:50px;
      }
input{
padding:10px;
width:300Px;
background:red;
     }
</style>
</head>
<body background="https://upload.wikimedia.org/wikipedia/commons/b/bc/It_is_a_official_logo_of_SDM_Institute_of_Technology%2C_Ujire.jpg">

<a href="user.jsp?"><button type="button" class="delete">USER DETAILS</button></a>
</br>
<a href="logout.jsp?"><button type="button" class="delete">LOGOUT</button></a>
</br>
</br>
</br>
<div class="box" align="center" style="color:blue">
<h1>E-NOTICE</h1>
</br>
</br>
</br>
<form action="academic.jsp">
<input type="submit" name="cs" value="ACADEMIC"/>
</form>
</br>
</br>
</br>
<form action="activity.jsp">
<input type="submit" name="me" value="ACTIVITIES"/>
</form>
</br>
</br>
</br>
<form action="scholarship.jsp">
<input type="submit" name="ec" value="SCHOLARSHIP"/>
</form>
</br>
</br>
</br>
<form action="faculty.jsp">
<input type="submit" name="is" value="FACULTY CONTACT"/>
</br>
</br>
</form>
</div>
</body>
</html>