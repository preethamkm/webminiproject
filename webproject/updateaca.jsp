
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id=request.getParameter("ide");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from academic where eveid='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
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
<body background="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOIro1s1v8zzmB5gkrtEUD3wCRJ9bqyKz9PjoQLJTM3syVjwt&s">
<h1 align="center">Update data </h1>
<div align="center">
<form method="get" action="updateaca1.jsp">
</br>
</br>
Event ID:
<input type="text" id="textbox" name="eveid" value="<%=resultSet.getString("eveid")%>" oninvalid="alert('enter correctly!!')" pattern="[A-Za-z0-9, ]+" required/>
</br>
</br>
Department:
<input type="text" id="textbox" name="dept" value="<%=resultSet.getString("dept") %>" oninvalid="alert('Invalid dept!!')" pattern="[A-Za-z, ]+" required/>
</br>
</br>
Date:
<input type="text" id="textbox" name="date" value="<%=resultSet.getString("date") %>" oninvalid="alert('Format: DD/MM/YYYY!!')" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" required/>
</br>
</br>
Description:
<input type="text" id="textbox" name="des" value="<%=resultSet.getString("descrip") %>">
</br>
</br>
<td><a href="updateaca1.jsp"><input type="submit" value="update"></a></td>
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>