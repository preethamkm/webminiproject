
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
String sql ="select * from activity where eventid='"+id+"'";
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
<form method="get" action="updateact1.jsp">
</br>
</br>
Event ID:
<input type="text" id="textbox" name="eventid" value="<%=resultSet.getString("eventid")%>" oninvalid="alert('Invalid ID!!')" pattern="[A-Za-z0-9, ]+" required/>
</br>
</br>
Event:
<input type="text" id="textbox" name="event" value="<%=resultSet.getString("event") %>" oninvalid="alert('Invalid event!!')" pattern="[A-Za-z0-9, ]+" required/>
</br>
</br>
Venue:
<input type="text" id="textbox" name="venue" value="<%=resultSet.getString("venue") %>"oninvalid="alert('Invalid venue!!')" pattern="[A-Za-z0-9, ]+" required>
</br>
</br>
Date:
<input type="text" id="textbox" name="date" value="<%=resultSet.getString("date") %>" oninvalid="alert('Format: DD/MM/YYYY!!')" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" required/>
</br>
</br>
Time:
<input type="text" id="textbox" name="time" value="<%=resultSet.getString("time") %>" oninvalid="alert('Invalid ex:23:59 !!')" pattern="([0-1]{1}[0-9]{1}|20|21|22|23):[0-5]{1}[0-9]{1}" required>
</br>
</br>
<td><a href="updateact1.jsp"><input type="submit" value="update"></a></td>
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