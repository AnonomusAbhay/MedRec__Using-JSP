<%@ page import="java.sql.*" %>
<%
  Connection conn = null;
String url = "jdbc:mysql://localhost:3306/medrec1?useSSL=false";

String user = "root";
String password = "";
 try
     {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
       
     String UName = session.getAttribute("name").toString(); 
        String searchval = request.getParameter("searchval");
        Statement stmt = conn.createStatement();
       
        String query = "SELECT * from registration where Uname LIKE '%"+searchval+"%' AND Uname !='"+UName+"'";
       
        ResultSet rs = stmt.executeQuery(query);
      

          if(rs.next())
       {
           
        
        String Name = "";
        do
        {
                    int Id = rs.getInt("UId");
                     Name = rs.getString("Uname");

%>
<a class="user-content" onclick="showchat(<%=Id%>)"><div class="prof-img"><img src="./userprof2.png" width="100%" alt="Profile"></div><div class="username">
<%= Name %> 
</div></a>                 
<% 

        
        }
         while (rs.next());
       }
       else
       {
        
         %>
         <a class="user-content d-flex justify-content-center align-items-center"><div class="username font-weight-bold">
No Result Found
</div></a> 
<%
       }
       
     
           }
        
        catch(Exception e) {
        out.println("Error: "+e.getMessage());
        }
%>