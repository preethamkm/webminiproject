<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String a=request.getParameter("one");
	String b=request.getParameter("two");
	String c=request.getParameter("three");
	String d=request.getParameter("four");
	String e=request.getParameter("five");
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice?useTimezone=true&serverTimezone=UTC","root","");  
String q="insert into students values(?,?,?,?,?)";  
PreparedStatement stmt=con.prepareStatement(q);  
stmt.setString(1,a);  
stmt.setString(2,b);  
stmt.setString(3,c);
stmt.setString(4,d);
stmt.setString(5,e);
int i=stmt.executeUpdate();  
out.println("<script>alert('Sucessfully Registered');window.location.href='login.jsp';</script>");   
con.close(); 
}catch(Exception e){ 
out.println("<script>alert('Input not valid OR User with this USN already exists!!');window.location.href='registration.jsp';</script>");
}  
%>
</body>
</html>