<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>
<jsp:include page="commoncode/header.jsp"></jsp:include>
    <jsp:include page="commoncode/navbar.jsp"></jsp:include>
 
<style>
  .profile-img{
    width:60px;
  }
</style>




<div class="container-fluid">


<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">
            <button type="button" class="btn btn-primary" >
             Manage Users
            </button>
    </h6>
  </div>

  <div class="card-body">

    <div class="table-responsive">
   
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          
            <tr>
           
                                  
                                    <th>Fullname</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Role</th>
                                    
                                    <th>Verify Status</th>
            
                                     <th>Remove </th>
          </tr>
        </thead>
        <tbody>
           
   <%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry="SELECT * FROM `registration` ";
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   if( rs == null)
   {
	   response.sendRedirect("index.jsp");
      
   }
   while(rs.next())
   { 
    %>
            
                 <tr>
                  
                    <td><%=rs.getString("Fname") %></td>
                    <td><%=rs.getString("Uname") %></td>
                    <td><%=rs.getString("Uemail") %></td>
                    <td><%=rs.getString("Urole") %></td>

                 
                    <td><%=rs.getString("verifystatus") %></td>
                    
            <td>
                
                  <input type="hidden" name="delete_id" value="">
                  <!-- <button type="submit" name="delete_btn" class="btn btn-success"> Verify</button> -->
              <a href="deluser.jsp?pid=<%=rs.getInt("UId") %>"> <button type="submit" name="delete_btn" class="btn btn-danger"> Remove</button></a>
            </td>
                </tr>

            <%
          }
          rs.close();
          pst.close();
          conn.close();
        }catch(Exception e)
	         {
		         out.print(e);
	         }
           %>
        
        </tbody>
      </table>

    </div>
  </div>
</div>

</div>


<jsp:include page="commoncode/scripts.jsp"></jsp:include>
<jsp:include page="commoncode/footer.jsp"></jsp:include>