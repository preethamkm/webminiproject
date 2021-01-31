<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
<%
String ide=request.getParameter("ide");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice?useTimezone=true&serverTimezone=UTC","root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("DELETE FROM activity WHERE eventid='"+ide+"'");

out.println("<script>alert('Deleted Sucessfully!!');window.location.href='activityview.jsp';</script>");  


}
catch(Exception e)
{
	}
%>
</body>
</html>