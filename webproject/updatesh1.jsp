<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/enotice?useTimezone=true&serverTimezone=UTC";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%

String first_name=request.getParameter("sname");
String last_name=request.getParameter("active");
String city_name=request.getParameter("expire");
String des=request.getParameter("docreq");
if(first_name != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update scholar set sname=?,active=?,expire=?,docreq=? where sname='"+first_name+"'";
ps = con.prepareStatement(sql);


ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, city_name);
ps.setString(4, des);
int i = ps.executeUpdate();
if(i > 0)
{
out.println("<script>alert('updated Sucessfully!!');window.location.href='scholarshipview.jsp';</script>");  

}
else
{
out.println("<script>alert('Input not valid OR Event ID cannot be updated');window.location.href='scholarshipview.jsp';</script>");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>