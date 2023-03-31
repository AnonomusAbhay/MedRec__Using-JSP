<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> Medrec</title>

  <!-- Custom fonts for this template-->
  
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  
  
  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/report.css">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">
    <jsp:include page="commoncode/navbar.jsp"></jsp:include>
<div class="container-fluid">

<%
String selected="All";
try
{
if(request.getMethod().equalsIgnoreCase("post"))
{
	selected =request.getParameter("dropdown1").toString();
  out.print(selected);
 
}
}catch(Exception e){
	out.print(e);
}

%>



<!-- DataTales Example -->
<div class="card shadow mb-4">
 <form action="" method="post">
  <div class="card-header py-3">
     <div class="headerbox">
      
      <div class="textforreport flexw">
        <h3>Generate Report on :-</h3>
      </div>
      <div class="dropdownbox flexw" >
        <select name="dropdown1" class="form-select form-select-sm" aria-label=".form-select-sm example" required>
       
          <option value="All">All Registered Users</option>
          <option value="Diabaties">Patients having Diabeties</option>
          <option value="BloodPressure">Patients having BloodPressure</option>
          <option value="HeartDise">Patients having Heart Diasease</option>
          <option value="covidvaccinationdoses">Covid vacination 2doses</option>
           <option value="bloodsugar">Patients having high blood sugar level</option>
           <option value="HeartRate">Patients having high HeartRate</option>
        </select>
      </div>
      <div class="btntogen flexw">
        <button type="submit" class="btn btn-primary">Genearte Report</button>
        <!-- <input class="btn btn-primary" id="pdf-button" type="button" value="Print"> -->

      </div>
 
     </div>
  </div>
</form>

  <div class="card-body">
     <div class="datediv">
      <div class="nameproj">
        <h2>MedRec</h2>
      </div>

     </div>
     <div class="datediv2">
      <div class="datecontainer">
      <%
       java.util.Date date =new java.util.Date();
      java.text.SimpleDateFormat sdf =new java.text.SimpleDateFormat("dd/MM/yyyy");
      String formattedDate=sdf.format(date);
      %>
       <p>DATE :-</p> <p class="datedynamic"><%=formattedDate %></p>
       </div>
     </div>
    <div class="table-responsive">

      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
        


          
          <tr>
           
                                 
                                    <th>Fullname</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Role</th>     
                                  
            
          </tr>
        </thead>
        <tbody>
                  <%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry=null;
  if(selected.equals("All"))
  {
	   qry="SELECT * FROM `registration` ";
  }
  else if(selected.equals("Diabaties"))
  {
	   qry="SELECT * FROM `registration` WHERE `UId`IN (select patientId from `medhistory` where `Diabaties` ='Yes')";
  }
  else if(selected.equals("BloodPressure"))
  {
	   qry="SELECT * FROM `registration` WHERE `UId`IN (select patientId from `medhistory` where `BloodPressure` ='Yes')";
  }
  else if(selected.equals("covidvaccinationdoses"))
  {
	   qry="SELECT * FROM `registration` WHERE `UId`IN (select patientId from `medhistory` where `covidvaccinationdoses` ='2')";
  }
  else if(selected.equals("HeartDise"))
  {
	   qry="SELECT * FROM `registration` WHERE `UId`IN (select patientId from `medhistory` where `HeartDise` ='Yes')";
  }
  else if(selected.equals("bloodsugar"))
  {
	   qry="SELECT * FROM `registration` WHERE `UId`IN (select patientId from `medhistory` where `BloodSugLev` >100)";
  }
  else if(selected.equals("HeartRate"))
  {
	   qry="SELECT * FROM `registration` WHERE `UId`IN (select patientId from `medhistory` where `HeartRate` > 100)";
  }
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   while(rs.next())
   { 
    %>
            
                <tr>
                  <td><%=rs.getString("Fname") %></td>
                    <td><%=rs.getString("Uname") %></td>
                    <td><%=rs.getString("Uemail") %></td>
                    <td><%=rs.getString("Urole") %></td>
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
</div>
        
        </tbody>
      </table>

    </div>
  </div>
</div>
    
<!-- /.container-fluid -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<jsp:include page="commoncode/scripts.jsp"></jsp:include>
<jsp:include page="commoncode/footer.jsp"></jsp:include>