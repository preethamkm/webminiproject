<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/enotice?useTimezone=true&serverTimezone=UTC";%>
<%!String user = "root";%>
<%!String psw = "";%>
<title>Online Notice Board</title>
<%

String first_name=request.getParameter("name");
String last_name=request.getParameter("id");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String branch=request.getParameter("branch");
String pass=request.getParameter("pass");
if(last_name != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update admin set name=?,id=?,email=?,phone=?,branch=?,pass=? where id='"+last_name+"'";
ps = con.prepareStatement(sql);

ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, email);
ps.setString(4, phone);
ps.setString(5, branch);
ps.setString(6, pass);
int i = ps.executeUpdate();
if(i > 0)
{
out.println("<script>alert('updated!! Sucessfully');window.location.href='admin2.jsp';</script>");  

}
else
{
out.println("<script>alert('Input not valid OR id cannot be updated');window.location.href='admin2.jsp';</script>");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>