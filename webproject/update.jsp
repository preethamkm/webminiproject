
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<title>Online Notice Board</title>
<%
String id=request.getParameter("para");
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
String sql ="select * from students where usn='"+id+"'";
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
<form method="get" action="update-process.jsp">
</br>
</br>
User name:
<input type="text" id="textbox" name="name" value="<%=resultSet.getString("name")%>" oninvalid="alert('enter alphabet!!')" pattern="[A-Za-z, ]+" required/>
</br>
</br>
USN:
<input type="text" id="textbox" name="usn" value="<%=resultSet.getString("usn") %>" oninvalid="alert('Invalid USN!!')" pattern="[A-Za-z0-9]{10}" required/>
</br>
</br>
Phone:
<input type="text" id="textbox" name="phone" value="<%=resultSet.getString("phone") %>" oninvalid="alert('enter number!!')" pattern="[1-9]{1}[0-9]{9}" required/>
</br>
</br>
Email:
<input type="email" id="textbox" name="email" value="<%=resultSet.getString("email") %>" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="ex: abc@xyz.com" required>
</br>
</br>
Password:
<input type="text" id="textbox" name="pass" value="<%=resultSet.getString("pass") %>" pattern=".{6,}" title="Six or more characters" required>
</br></br>
<td><a href="update-process.jsp"><input type="submit" value="update"></a></td>

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