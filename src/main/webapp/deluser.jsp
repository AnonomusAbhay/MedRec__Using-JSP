<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
  <%

 Connection conn=null;
  int deleteuser =Integer.parseInt(request.getParameter("pid"));
 
  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
			PreparedStatement stmt = conn.prepareStatement("DELETE FROM `registration` WHERE `UId`= ? ");
			stmt.setInt(1, deleteuser);
			
		      stmt.executeUpdate();
		      response.sendRedirect("manageuser.jsp");	
			
 }catch (Exception e) {
           e.printStackTrace();
           out.print(e);
	 }
	 %>
</body>
</html>