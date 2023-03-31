<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 <%
 Connection con;
  if(session.getAttribute("name") != null)
  {
	  var outgoing_id = session.getAttribute("id");
	  var incoming_id =2;
	  var message=request.getParameter("message");
	  
	  if(message != null)
	  {   try{
		  Class.forName("com.mysql.cj.jdbc.Driver");
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
			Statement st =conn.createStatement;
			int i =st.executeUpdate("INSERT INTO `messages`( `incomingmsgid`, `outgoingmsgid`, `msg`) VALUES('"+incoming_id+"','"+outgoing_id+"','"+message+"')");
	  }catch(Exception e)
	  {
		 e.printStackTrace();
	  }
	  
			  
        }
 %>
</body>
</html>