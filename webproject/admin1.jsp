<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
<!DOCTYPE html>
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
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice?useTimezone=true&serverTimezone=UTC","root","");  
//here sonoo is database name, root is username and password  
 Statement stmt=con.createStatement();  
String q="select * from admin where id='"+a+"' and pass='"+b+"'";
ResultSet rs=stmt.executeQuery(q); 
	if(rs.next()){
		 session.setAttribute( "theName",a);
	   response.sendRedirect("admin2.jsp");
  }
else
out.println("<script>alert('Invalid Login! Check Password and ID');window.location.href='admin.jsp';</script>");  
 
con.close(); 
}catch(Exception e){
	
	}  

%>
</body>
</html>