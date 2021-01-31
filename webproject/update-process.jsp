<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/enotice?useTimezone=true&serverTimezone=UTC";%>
<%!String user = "root";%>
<%!String psw = "";%>
<title>Online Notice Board</title>
<%

String first_name=request.getParameter("name");
String last_name=request.getParameter("usn");
String city_name=request.getParameter("phone");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
if(last_name != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update students set name=?,usn=?,phone=?,email=?,pass=? where usn='"+last_name+"'";
ps = con.prepareStatement(sql);


ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, city_name);
ps.setString(4, email);
ps.setString(5, pass);
int i = ps.executeUpdate();
if(i > 0)
{
out.println("<script>alert('updated!! Sucessfully');window.location.href='user.jsp';</script>");  

}
else
{
out.println("<script>alert('Input not valid OR USN cannot be updated');window.location.href='user.jsp';</script>");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>