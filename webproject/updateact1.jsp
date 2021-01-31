<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/enotice?useTimezone=true&serverTimezone=UTC";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%

String first_name=request.getParameter("eventid");
String last_name=request.getParameter("event");
String city_name=request.getParameter("venue");
String des=request.getParameter("date");
String time=request.getParameter("time");
if(first_name != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update activity set eventid=?,event=?,venue=?,date=?,time=? where eventid='"+first_name+"'";
ps = con.prepareStatement(sql);


ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, city_name);
ps.setString(4, des);
ps.setString(5, time);
int i = ps.executeUpdate();
if(i > 0)
{
out.println("<script>alert('updated Sucessfully!!');window.location.href='activityview.jsp';</script>");  

}
else
{
out.println("<script>alert('Input not valid OR Event ID cannot be updated');window.location.href='activityview.jsp';</script>");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>