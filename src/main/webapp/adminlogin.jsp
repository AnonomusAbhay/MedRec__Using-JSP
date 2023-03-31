<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<body>
<%

 Connection conn=null;
  String adminuname =request.getParameter("adminuname");
  String adminpass =request.getParameter("adminpass");
  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM `admin` WHERE  `AdminUName`= ? and `AdminPass` =?  ");
			stmt.setString(1, adminuname);
			stmt.setString(2, adminpass);
			ResultSet rs =stmt.executeQuery();
		
			if(rs.next())
			{
			
			
			 response.sendRedirect("index.jsp");	

			
			}else {
				response.sendRedirect("login.jsp");
			}
 }catch (Exception e) {
           e.printStackTrace();
           out.print(e);
	 }
	 %>
</body>
</html>