<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MedRec</title>

  <!-- Google Fonts -->
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet" />
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="css/profile.css">
  <!--  Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet" />
  <link rel="stylesheet" href="css/modal.css">
   <link rel="stylesheet" href="css/Navbar.css">
    <link rel="stylesheet" href="css/Footercss.css">
    <!-- <link rel="stylesheet" href="css/BS_css/css/BS.min.css"> -->
    
    <link rel="stylesheet" href="css/home.css">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" /> -->
    
</head>

<body>
  <%
  if(session.getAttribute("name") == null)
  {
    response.sendRedirect("RegSignUp.jsp");
  }
  %>

<% int userid= Integer.parseInt(request.getParameter("uid")); 

%>

    <!-- NAVBAR -->
<nav class="Navbar fixedParallex">
    <div class="logo">
        MedRec
    </div>
    <input type="checkbox" id="navtoggle" />
    <label for="navtoggle" class="icon-btn">
        <i class="fas fa-bars"></i>
    </label>
    <ul class="nav-ul">
        <li><a  href="index.jsp">Home</a></li>  
<li><a href="MedHistoryForm.jsp">Med-History-Form</a></li>
         <li><a class="_active" href="MedHistory1.jsp">Med-History</a></li>
 
        <li><a  href="DiseaseTracker.jsp">Disease Tracker</a></li>
        <li><a href="chatroomdesign.jsp">Med-Assistant</a></li>
        <li><a href="#">About us</a></li>
        <li class="dashnav">|</li>
        
        <a href="Logout"><button class="btnclass">Logout</button></a>
    </ul>
</nav>
<!-- NAVBAR END -->

<%

try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
  String qry="SELECT * FROM `medhistory` where `patientId`='"+userid+"' ";
   PreparedStatement pst=conn.prepareStatement(qry);  
   ResultSet rs = pst.executeQuery();
   if( rs == null)
   {
	   response.sendRedirect("MedHistoryForm.jsp");
      
   }
   if(!(rs.next()))
   {
	   response.sendRedirect("MedHistoryForm.jsp");  
   }
   rs.beforeFirst();
   while(rs.next())
   { 
    %>

  <!--  -->
  <div class="page">
    <div class="container">
      <!--  -->
      
        <!-- <button id="trybtn" type="submit" ></button>    -->
      <div class="main-body">
        <form action="updatemedhistory.jsp" method="post">
        <div class="row gutters-sm">
          <div class="col-md-4 mb-3">
            <div class="card">
              <div class="card-body">
                <div class="d-flex flex-column align-items-center text-center">
                  <img src="assets/img/Profileimg1.png" alt="Profileimg" class="rounded-circle" width="150" />
                  <div class="mt-3">
                    <h4>Patient :- <%= rs.getString("pname") %></h4>
                  </div>
                </div>
              </div>
            </div>
            <div class="card mt-3">
              <ul class="list-group list-group-flush">
                <li class="
                      list-group-item
                      d-flex
                      justify-content-between
                      align-items-center
                      flex-wrap
                    ">
                  <h6 class="mb-0">Age</h6>
                  <span class="text-secondary"><%= rs.getString("Page") %></span>
                </li>
                <li class="
                      list-group-item
                      d-flex
                      justify-content-between
                      align-items-center
                      flex-wrap
                    ">
                  <h6 class="mb-0">Weight</h6>
                  <span class="text-secondary"><%= rs.getString("pweight") %></span>
                </li>
                <li class="
                      list-group-item
                      d-flex
                      justify-content-between
                      align-items-center
                      flex-wrap
                    ">
                  <h6 class="mb-0">Height</h6>
                  <span class="text-secondary"><%= rs.getString("pheight") %></span>
                </li>
                <li class="
                      list-group-item
                      d-flex
                      justify-content-between
                      align-items-center
                      flex-wrap
                    ">
                  <h6 class="mb-0">Blood Group</h6>
                  <span class="text-secondary"><%= rs.getString("BloodGroup") %></span>
                </li>
                <li class="
                      list-group-item
                      d-flex
                      justify-content-between
                      align-items-center
                      flex-wrap
                    ">
                  <h6 class="mb-0">Gender</h6>
                  <span class="text-secondary"><%= rs.getString("Gender") %></span>
                </li>
                <li class="
                      list-group-item
                      d-flex
                      justify-content-between
                      align-items-center
                      flex-wrap
                    ">
                  <h6 class="mb-0">Emergency Contact</h6>
                  <span class="text-secondary">+91151544897</span>
                </li>
                <div class="d-flex justify-content-center align-items-center gap-5">
                  <!-- <button class="btn btn-primary my-3" id="button" onclick="Enable()">
                    Enable Editing</button> -->
                    <!-- <input type="button"  class="btn btn-primary my-3" value="Enable Editing" id="button" onclick="Enable()">
                    <button type="submit" class="btn btn-success my-3" id="save" onclick="call()" disabled>Save</button> -->
                    
                  
                </div>
              </ul>
            </div>
          </div>















        <div class=" col-md-8" style="height: 100vh;
    overflow-y: scroll;">
          <div class="card mb-3">
            <div class="card-body">
              <div class="row my-2">
                <div class="col-sm-9 text-info">
                  <h5>Disease History</h5>
                </div>
              </div>
              <hr />
              <div class="row my-2">
                <div class="col-sm-5">
                  <h6 class="mb-0">Previous Disease</h6>
                </div>
                <input name="prevdis" class="col-sm-6 text-secondary" value="<%= rs.getString("prevDisease") %>" disabled id="Disease" />
              </div>
              <hr />
              <div class="row my-2">
                <div class="col-sm-5">
                  <h6 class="mb-0">Diabeties</h6>
                </div>
                <input name="diab" class="col-sm-6 text-secondary" value="<%= rs.getString("Diabaties") %>" disabled id="Diabeties" />
              </div>
              <hr />
              <div class="row my-2">
                <div class="col-sm-5">
                  <h6 class="mb-0">Blood Pressure</h6>
                </div>
                <input  class="col-sm-6 text-secondary" name="bp1" value="<%= rs.getString("BloodPressure") %>" disabled id="BP" />
              </div>
              <hr />
              <div class="row my-2">
                <div class="col-sm-5">
                  <h6 class="mb-0">Heart Disease</h6>
                </div>
                <input name="heartdis" class="col-sm-6 text-secondary" value="<%= rs.getString("HeartDise") %>" disabled id="HeartDisease" />
              </div>
              <hr />
              <!-- <div class="row my-2">
                    <div class="col-sm-12">
                      <a
                        class="btn btn-info"
                  
                        href="Registration.html"
                        >Edit</a
                      >
                    </div>
                  </div> -->
            </div>
          </div>

          <div class="row gutters-sm">
            <div class="col-sm-6 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="d-flex align-items-center mb-3">
                    <div class="col-sm-9 text-info">Passed Med Records</div>
                  </h5>
                  <hr />
                  <!--  -->
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Last Full Body Checkup</h6>
                    </div>
                    <input class="col-sm-6 text-secondary" name="lsbodycheck" value="<%= rs.getString("LastBodyCheckD") %>" type="date" disabled id="date" />

                  </div>
                  <hr />
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Last Surgery</h6>
                    </div>
                    <input name="lssur" class="col-sm-6 text-secondary" value="<%= rs.getString("LastSurgery") %>" disabled id="Surgery" />
                  </div>
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Consulted Doctors</h6>
                    </div>
                    <div class="w-50">
                      <input name="condct" class="col-sm-6 text-secondary w-100" value="<%= rs.getString("ConsDoctor") %>" disabled id="Doctors" />
                    </div>

                  </div>
                  <hr />
                  
                       <div class="row my-2">
                    <div class="col-sm-5">
                      <h6 class="mb-0">Covid Vaccination dose </h6>
                    </div>

                    <input class="col-sm-6 text-secondary" type="text" name="covidvacdose" value="<%out.print( (rs.getString("covidvaccinationdoses"))); %>" disabled
                      id="Vaccinations">

                  </div>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-5">
                      <h6 class="mb-0">Other Vaccinations</h6>
                    </div>

                    <input class="col-sm-6 text-secondary" type="text" name="covidvac" value="none" disabled
                      id="Vaccinations">

                  </div>
                  <hr />

                  <!--  -->
                </div>
              </div>
            </div>
            <div class="col-sm-6 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="d-flex align-items-center mb-3">
                    <div class="col-sm-9 text-info">Health Attributes</div>
                  </h5>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Blood Sugar Level</h6>
                    </div>
                    <div class="w-50">

                      <input name="sugarlevel"  class="col-sm-6  text-secondary w-100" type="text" value="<%= rs.getString("BloodSugLev") %>" disabled id="sugar">
                    </div>
                    <!-- Normal level  between 70 and 99 -->
                  </div>
                  <hr />

                  <div  class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Oxygen Saturation Level</h6>
                    </div>
                    <div class="w-50">

                      <input name="oxylvl" class="col-sm-6 text-secondary w-100" type="number" value="<%= rs.getString("OxySatLev") %>" disabled id="oxygen">
                    </div>
                    <!-- Normal oxygen saturation levels are between 95% and 100%. -->
                  </div>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Last Checed BP Level</h6>
                    </div>
                    <div class="w-50">

                      <input name="bplvl" class="col-sm-6 text-secondary w-100" type="text" value="<%= rs.getString("LatCheckBp") %>" disabled
                        id="BLPLevel">
                    </div>
                    <!-- Normal blood pressure is typically considered to be around 120/80 mmHg, -->
                  </div>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Body Mass Index</h6>
                    </div>
                    <div class="w-50">

                      <input name="bmi" class="col-sm-6 text-secondary w-100" type="text" value="<%= rs.getString("BMI") %>" disabled id="BMI">
                    </div>
                    <!-- 18.5 and 24.9 -->
                  </div>
                  <hr />
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Cholesterol levels</h6>
                    </div>
                    <div class="w-50">

                      <input name="cholesterol" class="col-sm-6 text-secondary w-100" type="text" value="<%= rs.getString("Cholesterollvl") %>" disabled
                        id="Cholesterol">
                    </div>
                    <!-- Normal total cholesterol levels are below 200 mg/dL, while normal LDL (or "bad") cholesterol levels are below 100 mg/dL. -->

                  </div>
                  <hr />
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Heart rate</h6>
                    </div>
                    <div class="w-50">

                      <input name="hrate" class="col-sm-6 text-secondary w-100" type="text" value="<%= rs.getString("HeartRate") %>" disabled
                        id="heartrate" />
                    </div>
                    <!-- A normal resting heart rate is typically between 60 and 100 beats per minute. -->


                  </div>
                  <hr />
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Respiratory rate</h6>
                    </div>
                    <div class="w-50">

                      <input name="rrate" class="col-sm-6 text-secondary w-100" type="text" value="<%= rs.getString("ResRate") %>" disabled
                        id="Repirate">
                    </div>
                    <!-- A normal respiratory rate is typically between 12 and 20 breaths per minute. -->

                  </div>
                  <hr />
                </div>
              </div>
              <!--  -->

            </div>
          </div>
          <div class="row gutters-sm">


            <div class="col-sm-6 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="d-flex align-items-center mb-3">
                    <div class="col
                    -sm-9 text-info">Health Issues</div>
                  </h5>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Allegies </h6>
                    </div>
                    <div class="w-50">

                      <input class="col-sm-6 text-secondary w-100" type="text" name="allergy1" value="<%= rs.getString("allergy1") %>" disabled
                        id="alleg1">
                    </div>
                  </div>
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0"> </h6>
                    </div>
                    <div class="w-50">

                      <input class="col-sm-6 text-secondary w-100" type="text" name="allergy2"
                        value="<%= rs.getString("allergy2") %>" disabled id="alleg2">
                    </div>
                  </div>

                  <hr />
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Ongoing Drugs</h6>
                    </div>
                    <div class="w-50">

                      <input class="col-sm-6 text-secondary w-100" type="text" name="ongoingdrug1" value="<%= rs.getString("ongoingdrug1") %>" disabled
                        id="drug1">
                    </div>
                  </div>
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0"> </h6>
                    </div>
                    <div class="w-50">

                      <input class="col-sm-6 text-secondary w-100" type="text" name="ongoingdrug2"  value="<%= rs.getString("ongoingdrug2") %>" disabled
                        id="drug2">
                    </div>
                  </div>
                  <hr />
                </div>
              </div>
            </div>
            <div class="col-sm-6 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="d-flex align-items-center mb-3">
                    <div class="col-sm-9 text-info">Medical Reports</div>
                  </h5>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Pulse Oximetry Report</h6>
                    </div>

                    <a target="_blank" class="btn btn-primary w-auto" href="Assest/SampleReport.pdf">View Report</a>
                  </div>
                  <hr />
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">HbA1c Report</h6>
                    </div>

                    <a target="_blank" class="btn btn-primary w-auto" href="Assest/SampleReport.pdf">View Report</a>
                  </div>
                  <hr />
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Lipid Panel Report</h6>
                    </div>

                    <a target="_blank" class="btn btn-primary w-auto" href="Assest/SampleReport.pdf">View Report</a>
                  </div>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">ECG Report</h6>
                    </div>
                    <a target="_blank" class="btn btn-primary w-auto" href="Assest/SampleReport.pdf">View Report</a>
                  </div>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">X-Ray Reports</h6>
                    </div>

                    <a target="_blank" class="btn btn-primary w-auto" href="Assest/SampleReport.pdf">View Report</a>
                  </div>
                  <hr />

                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">MRI Scan</h6>
                    </div>
                    <a target="_blank" class="btn btn-primary w-auto" href="Assest/SampleReport.pdf">View Report</a>
                  </div>
                  <hr />
                </div>
              </div>
            </div>


            <!--  -->

          </div>

          <div class="row gutters-sm">


            <div class="col-sm-6 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="d-flex align-items-center mb-3">
                    <div class="col-sm-9 text-info">Other</div>
                  </h5>
                  <hr />



                  <hr />
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Other info</h6>
                    </div>
                    <div class="w-50">

                      <input class="col-sm-6 text-secondary w-100" type="text" value="Demold" disabled id="oth1">
                    </div>
                  </div>
                  <div class="row my-2">
                    <div class="col-sm-6">
                      <h6 class="mb-0"> </h6>
                    </div>
                    <div class="w-50">

                      <input class="col-sm-6 text-secondary w-100" type="text" value="Crousin" disabled id="oth2">
                    </div>
                  </div>
                  <hr />
                </div>
              </div>
            </div>

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

            <!--  -->

          </div>
        </div>
      </form>
      </div>
     
      <!--  -->
    </div>
  </div>
 </div>
  </div>


  </div> 
  
  
  
  
  
          
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <script>
     let QRBox=document.getElementById("QRBox");
      let qrmed=document.getElementById("qrmed");
      let userid =document.getElementById("userid").value;
      let serverurl="http://localhost:8082/MedRec1/MedHistory1.jsp?uid=" ;
      function generateQR()
      {
        qrmed.src ="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data="+serverurl+userid;
      }
    const Enable = () => {
      document.getElementById("Disease").disabled = false;
      document.getElementById("Diabeties").disabled = false;
      document.getElementById("BP").disabled = false;
      document.getElementById("HeartDisease").disabled = false;
      document.getElementById("date").disabled = false;
      document.getElementById("Surgery").disabled = false;
      document.getElementById("Doctors").disabled = false;
      document.getElementById("Vaccinations").disabled = false;
      document.getElementById("sugar").disabled = false;
      document.getElementById("oxygen").disabled = false;
      document.getElementById("BLPLevel").disabled = false;
      document.getElementById("BMI").disabled = false;
      document.getElementById("Cholesterol").disabled = false;
      document.getElementById("heartrate").disabled = false;
      document.getElementById("Repirate").disabled = false;
      document.getElementById("alleg1").disabled = false;
      document.getElementById("alleg2").disabled = false;
      document.getElementById("drug1").disabled = false;
      document.getElementById("drug2").disabled = false;
      document.getElementById("oth1").disabled = false;
      document.getElementById("oth2").disabled = false;

      document.getElementById("save").disabled = false;
      document.getElementById("button").style.display = "none";

    }

    function call()
    {
      // document.getElementById('#trybtn').click();
      console.log("cliclk");
    }
    const show = () => {
      
      var modal = document.getElementById("myModal");

      var close = document.getElementsByClassName("close")[0];

      modal.style.display = "block";
      generateQR();
      close.onclick = function () {
        modal.style.display = "none";
      };
    };
  </script>
  <!-- end footer -->

</body>
</html>