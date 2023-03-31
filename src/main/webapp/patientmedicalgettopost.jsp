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
  if(session.getAttribute("name") == null)
  {
    response.sendRedirect("RegSignUp.jsp");
  }
  %>
  
<form action="MedHistory2.jsp" method="post">
  <%
  int userid= Integer.parseInt(request.getParameter("uid")); 

%>
<input type="hidden" name="uid" id="uid" value="<%=userid %>">
<button id="btnclick" >Processing</button>

</form>
<script>
 
  window.onload=function(){
    document.getElementById("btnclick").click();
  }
</script>
</body>
</html>