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
<title>User details</title>
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
   height:350px;
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
<body background="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3f9NC9AOGGOhiz0_jrzZIM6mQIASnNme8z6b2BV_lgLkT_ktd&s">
<h1 align="center">E-NOTICE</h1>
<%

try{

connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from students where usn='"+session.getAttribute("theName")+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div align="center" class="box">
<form>
</br>
USER NAME :- <%=resultSet.getString("name") %>
</br>
</br>
</br>
USN :- <%=resultSet.getString("usn") %>
</br>
</br>
</br>
PHONE :- <%=resultSet.getString("phone") %>
</br>
</br>
</br>
EMAIL :- <%=resultSet.getString("Email") %>
</br>
</br>
</br>
PASSWORD :- <%=resultSet.getString("pass") %>
</br>
</br>
<a href="update.jsp?para=<%=resultSet.getString("usn") %>"><button type="button" class="delete">Update</button></a>
</form>
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