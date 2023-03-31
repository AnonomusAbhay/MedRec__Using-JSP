<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>
 <jsp:include page="commoncode/header.jsp"></jsp:include>
 <jsp:include page="commoncode/navbar.jsp"></jsp:include>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
        class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
  </div>

  <!-- Content Row -->
  <div class="row">

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Registered Users</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">
              <%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry="SELECT * FROM `registration` ";
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   rs.last();
   %> <h4> <%=rs.getRow() %> </h4>
   <% 
  
          rs.close();
          pst.close();
          conn.close();
        }catch(Exception e)
	         {
		         out.print(e);
	         }
              %>

               <h4></h4>

              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Number of patients</div>
                            <%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry="SELECT * FROM `registration` WHERE `Urole`='Patient'";
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   rs.last();
   %> <div class="h5 mb-0 font-weight-bold text-gray-800"> <%=rs.getRow() %> </div>
   <% 
  
          rs.close();
          pst.close();
          conn.close();
        }catch(Exception e)
	         {
		         out.print(e);
	         }
              %>
            
            </div>
            <div class="col-auto">
              <i class="fas fa-user-plus fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-info shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Number of Doctors</div>
              <div class="row no-gutters align-items-center">
                <div class="col-auto">
                               <%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry="SELECT * FROM `registration` WHERE `Urole`='Doctor'";
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   rs.last();
   %>  <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"> <%=rs.getRow() %> </div>
   <% 
  
          rs.close();
          pst.close();
          conn.close();
        }catch(Exception e)
	         {
		         out.print(e);
	         }
              %>
                  
                </div>
               
              </div>
            </div>
            <div class="col-auto">
              <i class="fa fa-user-md fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Pending Requests Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Doctor Verifications</div>
                                             <%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry="SELECT * FROM `registration` WHERE `Urole`='Doctor' AND `verifystatus`= 0";
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   rs.last();
   %>  <div class="h5 mb-0 font-weight-bold text-gray-800"> <%=rs.getRow() %> </div>
   <% 
  
          rs.close();
          pst.close();
          conn.close();
        }catch(Exception e)
	         {
		         out.print(e);
	         }
              %>
              
            </div>
            <div class="col-auto">
              <i class="fa fa-stethoscope fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
 <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Patitents With Diabeties</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">
              <%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry="SELECT * FROM `medhistory` WHERE `Diabaties`= 'Yes'";
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   rs.last();
   %> <h4> <%=rs.getRow() %> </h4>
   <% 
  
          rs.close();
          pst.close();
          conn.close();
        }catch(Exception e)
	         {
		         out.print(e);
	         }
              %>

               <h4></h4>

              </div>
            </div>
            <div class="col-auto">
              <i class="fa fa-h-square fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Patients with BloodPressure</div>
                            <%

                            try{
                            	  Class.forName("com.mysql.cj.jdbc.Driver");
                            	  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
                            	  String qry="SELECT * FROM `medhistory` WHERE `BloodPressure`= 'Yes'";
                            	   PreparedStatement pst=conn.prepareStatement(qry);  
                            	   ResultSet rs = pst.executeQuery();
                            	   rs.last();
                            	   %> <h4> <%=rs.getRow() %> </h4>
                            	   <% 
                            	  
                            	          rs.close();
                            	          pst.close();
                            	          conn.close();
                            	        }catch(Exception e)
                            		         {
                            			         out.print(e);
                            		         }
                            	              %>

            
            </div>
            <div class="col-auto">
              <i class="fa fa-heartbeat fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
    


    
 <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Two covid vaccination doses</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">
              <%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry="SELECT * FROM `medhistory` WHERE `covidvaccinationdoses`= '2'";
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   rs.last();
   %> <h4> <%=rs.getRow() %> </h4>
   <% 
  
          rs.close();
          pst.close();
          conn.close();
        }catch(Exception e)
	         {
		         out.print(e);
	         }
              %>

               <h4></h4>

              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-syringe fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
  </div>

  <!-- Content Row -->






 <jsp:include page="commoncode/scripts.jsp"></jsp:include>
 <jsp:include page="commoncode/footer.jsp"></jsp:include>

