<%@page import="java.sql.*"%>
<!DOCTYPE html>
<head>
<title>E-NOTICE</title>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
.th{
  background-color: #4CAF50;
  color: white;
}
</style>


</head>
<html>
<body>
<h1 align="center">FACULTY INFO</h1>
<div align="center">
<form action="main.jsp">
<input type="submit" name="main" value="MAIN PAGE" />
</form>
</br>
</div>
<table id="customers">
<tr>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Branch</th>
</tr>
<%
try{
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "enotice?useTimezone=true&serverTimezone=UTC";
	String userid = "root";
	String password = "";
Class.forName(driver);
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from admin";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("branch") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>