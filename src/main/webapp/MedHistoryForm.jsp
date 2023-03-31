<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 
    <!-- CSS  -->
    <title>MedRec</title>
    <link rel="stylesheet" href="css/Navbar.css">
    <link rel="stylesheet" href="css/Footercss.css">
    <link rel="stylesheet" href="css/BS_css/css/BS.min.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/signupcss.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    



    <link rel="stylesheet" href="css/medhisform.css" />
 
    <!-- <link rel="stylesheet" href="../css/box_style_final.css" /> -->
    <!-- end CSS -->
    <!-- OTHER LINKS -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
    />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <!-- end OTHER -->
 

    
  </head>

  <body>
     <%
   if(session.getAttribute("name") == null)
   {
	   response.sendRedirect("RegSignUp.jsp");
   }
   %>
        <!-- Navbar -->
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
        <li><a class="_active" href="MedHistoryForm.jsp">Med-History-Form</a></li>
         <li><a href="MedHistory1.jsp">Med-History</a></li>
        <li><a  href="DiseaseTracker.jsp">Disease Tracker</a></li>
        <li><a href="chatui.jsp">Med-Assistant</a></li>
        <li><a href="#">About us</a></li>
        <li class="dashnav">|</li>
        
        <a href="Logout"><button class="btnclass">Logout</button></a>
        
    </ul>
        </nav>        <!--End navbar -->

    <!-- form -->
    <div class="outercontainerform">
      <form action="MedHDataStore.jsp" method="post">
        <div class="formcontainer">
          <div class="formtitle">
            <h3 style="padding-top: 20px">Basic Medical History</h3>
            <div class="lineforani"></div>
          </div>
          <div class="startupinfo">
            <div class="titleforstart">
              <h5 style="font-size: px">Patient Information</h5>
            </div>
            <div class="inputboxwname">
              <label for="">Age</label>
              <input
                class="inputboxincu"
                type="number"
                placeholder="Age in years"
                name="page"
                id="startupname"
                required
              />
            </div>
            <div class="inputboxwname">
              <label for="">Weight</label>
              <input
              class="inputboxincu"
              type="number"
              name="pweight"
              id="emailincu"
              placeholder="Weight in kg"
              required
            />
            </div>
            <div class="inputboxwname">
              <label for="">Height</label>
              <input
                class="inputboxincu"
                type="number"
                name="pheight"
                id="Contactincu"
                placeholder="Height in cm"
                required
              />
            </div>
            <div class="inputboxwname">
              <label for="">Blood Group</label>
              <select class="inputboxincu" name="pblood" id="Stage" required>
                <option selected="true" disabled="disabled">
                  --- Select BloodGroup ---
                </option>
                <option value="Opos">
                  O+
                </option>
                <option value="Oneg">
                    O-
                  </option>
                  <option value="Bpos">
                    B+
                  </option>
                  <option value="Bneg">
                    B-
                  </option>
                  <option value="Abpos">
                    AB+
                  </option>
                  <option value="Abneg">
                   AB-
                  </option>

              </select>
            </div>
            <div class="inputboxwname">
              <label for="">Gender</label>
              <div class="radiobox"> 
                 <div class="radio1">
                    <input type="radio" value="Male" name="pgender" id="" required>
                    <label for="">Male</label>
                 </div>
                 <div class="radio2">
                    <input type="radio" value="Female"name="pgender" id="" required>
                    <label for="">Female</label>
                 </div>
              </div>
            </div>
            <div class="inputboxwname">
              <label for="">Previous Disease Name</label>
              <input
              class="inputboxincu"
              type="text"
              name="prevdisease"
              id="prevdisease"
              placeholder="Disease Name"
             required
            />
            </div>
          </div>
          <div class="founderinfobox">
            <div class="titleforstart">
              <h5>Disease History</h5>
            </div>
            <div class="inputboxwname">
                <label for="">Diabaties</label>
              <div class="radiobox"> 
                 <div class="radio1">
                    <input type="radio" value="Yes" name="diabaties" id="diabaties" required>
                    <label for="">Yes</label>
                 </div>
                 <div class="radio2">
                    <input type="radio" value="No"name="diabaties" id="diabaties" required>
                    <label for="">No</label>
                 </div>
              </div>
            </div>
            <div class="inputboxwname">
                <label for="">Blood Pressure</label>
              <div class="radiobox"> 
                 <div class="radio1">
                    <input type="radio" value="Yes" name="bp" id="bp" required>
                    <label for="">Yes</label>
                 </div>
                 <div class="radio2">
                    <input type="radio" value="No"name="bp" id="bp" required>
                    <label for="">No</label>
                 </div>
              </div>
            </div>
            <div class="inputboxwname">
                <label for="">Heart Disease </label>
              <div class="radiobox"> 
                 <div class="radio1">
                    <input type="radio" value="Yes" name="Heartdise" id="Heartdise" required>
                    <label for="">Yes</label>
                 </div>
                 <div class="radio2">
                    <input type="radio" value="No"name="Heartdise" id="Heartdise" required>
                    <label for="">No</label>
                 </div>
              </div>
            </div>
            <div class="inputboxwname">
              <label for="">Body -Checkup Date </label>
              <input
                class="inputboxincu"
                type="date"
                name="Bodycheck"
                id="Bodycheck"
                placeholder=" "
               required
              />
            </div>
          </div>
          <div class="startupinfo2">
            <div class="inputboxwname">
              <label for="">Last Surgery Name</label>
              <input
              class="inputboxincu"
              type="text"
              name="Surgeryname"
              id="Surgeryname"
              placeholder="Surgery Name"
             required
            />
            
            </div>
            <div class="inputboxwname">
              <label for="">Consulted Doctor </label>
              <input
              class="inputboxincu"
              type="text"
              name="ConsultedDoct"
              id="ConsultedDoct"
              placeholder="Last Surgery Doctor "
             required
            />
            </div>
          </div>
          <div class="agreebox">
            <div class="form-check">
              <input
                class="form-check-input"
                type="checkbox"
                value="true"
                id="defaultCheck1"
                style="display: inline-block"
                required
              />
              <label class="form-check-label" for="defaultCheck1">
                I hereby agree that all entered information is valid and I am responsible it 
              </label>
            </div>
          </div>
          <div class="submitbtn">
            <!-- <input type="button" class="incusubmit" value="submit" /> -->
            <button class="incusubmit" type="submit" name="incusubmit">Submit</button>
          </div>
        </div>
      </form>
    </div>
    <!-- End form -->
    <!-- FOOTER -->
      <!-- Footer -->
<footer>
    <section class="footer-cls">
      <p class="footer-logo">&leftrightsquigarrow;</p>
    </section>
    <div class="footer-content">
      <div class="first">
        <h3>Quick Links</h3>
        <ul>
          <li>Home</li>
          <li>Video Consultancy</li>
          <li>About Us</li>
          <li>Contact Us</li>
        </ul>
      </div>
      <div class="first">
        <h3>Our Services</h3>
        <ul>
          <li>Store Medical history</li>
          <li>Track Disease</li>
          <li>Online Consultancy</li>
          <li>Med Assistant</li>
        </ul>
      </div>
      <div class="first">
        <h3>Explore</h3>
        <ul>
          <li>User Profile</li>
          <li>View MedHistory</li>
          <li>Chat Consultancy</li>
          <li>Video Consultancy</li>
        </ul>
      </div>
      <div class="second">
        <h3>Support Us</h3>
        <div class="icon-flex">
          <i class="fab fa-facebook fa-fw"></i>
          <i class="fab fa-instagram fa-fw"></i>
          <i class="fab fa-linkedin fa-fw"></i>
          <i class="fab fa-twitter fa-fw"></i>
          <!-- <br>
                    <br><br><br><br>
                    <br> -->
        </div>
      </div>
    </div>
  
    <section class="cpyrgt">
      <p>&copy;All Rights Are Reserved To MedRec</p>
    </section>
  </footer>
  <!-- End Footer -->
  
    <!-- FOOTEREND -->
    
        <script src="css/BS_css/js/BS.min.js"></script>
     
    
  </body>

</html>

