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
  int Verifydoctor =Integer.parseInt(request.getParameter("Did"));
 
  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
			PreparedStatement stmt = conn.prepareStatement("UPDATE `registration` SET `verifystatus`= ? WHERE `UId`= ? ");
			stmt.setInt(1, 1);
			stmt.setInt(2,Verifydoctor );
		      stmt.executeUpdate();
		      response.sendRedirect("Doctorverify.jsp");	
			
 }catch (Exception e) {
           e.printStackTrace();
           out.print(e);
	 }
	 %>
</body>
</html>