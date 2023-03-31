<%@ page import="java.sql.*" %>

<%
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/medrec1?useSSL=false";
		String user = "root";
		String password = "";
		try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        int Id = Integer.parseInt(request.getParameter("Id"));
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM `registration` WHERE UId="+Id+"  ");
     
String Name = "";
                if(rs.next()) {
             Name = rs.getString("Uname");
                %>
<div class="prof-img">
<img src="./userprof2.png" width="100%" alt="Profile"> </div>
 <div class="username">
<%=Name%>
<address> <small>Online</small></address>
</div>
               <% } }
        catch (Exception e) {
out.println("Error creating"+e);
        }
%>