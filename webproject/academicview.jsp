<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<title>Academic</title>
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
.th{
  background-color: #4CAF50;
  color: white;
}
</style>


</head>
<html>
<body>
<h1 align="center">Academic Details</h1>
</br>
<div align="center">
<form action="admin2.jsp">
<input type="submit" name="main" value="MAIN PAGE" />
</form>
</div>
</br>
</br>
<table id="customers">
<tr>
<th>Event ID</th>
<th>Department</th>
<th>Date</th>
<th>Description</th>
<th>Action</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from academic";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("eveid") %></td>
<td><%=resultSet.getString("dept") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("descrip") %></td>
<td><a href="delete.jsp?ide=<%=resultSet.getString("eveid") %>"><button type="button" class="delete">Delete</button></a></br>
<a href="updateaca.jsp?ide=<%=resultSet.getString("eveid") %>"><button type="button" class="delete">Update</button></a></td>
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