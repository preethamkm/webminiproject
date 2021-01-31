<%@page import="java.sql.*"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "enotice?useTimezone=true&serverTimezone=UTC";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<head>
<title>ADMIN</title>
</head>
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
   height:400px;
   border:solid red; 
   border-radius:60px;
}
input{
padding:10px;
width:300Px;
background:red;
}
</style>
<html>
<body background="https://cdn.wallpapersafari.com/39/90/30FIeP.png">
<h1 align="center">E-NOTICE</h1>
<%

try{

connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from admin where id='"+session.getAttribute("theName")+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div align="center" class="box">
</br>
ADMIN ID :- <%=resultSet.getString("id") %>
</br>
</br>
<form action="academicin.jsp">
<input type="submit" name="adin" value="ACADEMIC INFORMATION UPDATE"/>
</form>
</br>
</br>
</br>
<form action="activityin.jsp">
<input type="submit" name="acin" value="ACTIVITIES INFORMATION UPDATE"/>
</form>
</br>
</br>
</br>
<form action="scholarshipin.jsp">
<input type="submit" name="scin" value="SCHOLARSHIP INFORMATION UPDATE"/>
</form>
</br>
</br>
<a href="admupdate.jsp?para=<%=resultSet.getString("id") %>"><button type="button" class="delete">Update admin details</button></a>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</br>
</br>
</br>
<div align="center">
<form action="main.jsp">
<input type="submit" name="main" value="MAIN PAGE" />
</form>
</div>
</body>
</html>