
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
String sql ="select * from scholar where sname='"+id+"'";
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
<form method="get" action="updatesh1.jsp">
</br>
</br>
Scholarship Name:
<input type="text" id="textbox" name="sname" value="<%=resultSet.getString("sname")%>" oninvalid="alert('Invalid ID!!')" pattern="[A-Za-z0-9, ]+" required/>
</br>
</br>
Active Date:
<input type="text" id="textbox" name="active" value="<%=resultSet.getString("active") %>" oninvalid="alert('Format: DD/MM/YYYY!!')" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" required/>
</br>
</br>
Expiry Date:
<input type="text" id="textbox" name="expire" value="<%=resultSet.getString("expire") %>" oninvalid="alert('Format: DD/MM/YYYY!!')" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" required>
</br>
</br>
Documents Required:
<input type="text" id="textbox" name="docreq" value="<%=resultSet.getString("docreq") %>" oninvalid="alert('Invalid ID!!')" pattern="[A-Za-z0-9, ]+" required/>
</br>
</br>
<td><a href="updatesh1.jsp"><input type="submit" value="update"></a></td>
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