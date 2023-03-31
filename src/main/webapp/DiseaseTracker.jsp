<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MedRec</title>
    <link rel="stylesheet" href="css/Navbar.css">
    <link rel="stylesheet" href="css/Footercss.css">
    <link rel="stylesheet" href="css/BS_css/css/BS.min.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/signupcss.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    <link rel="stylesheet" href="css/diseaseTracker.css">
    <!-- <script src="Js/multiselect-dropdown.js"></script> -->
    
    <link rel="stylesheet" href="css/othercss/css/mobiscroll.javascript.min.css"><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="css/othercss/js/mobiscroll.javascript.min.js"></script>




</head>
<body>
   <%
   if(session.getAttribute("name") == null)
   {
	   response.sendRedirect("RegSignUp.jsp");
   }
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
         <li><a href="MedHistory1.jsp">Med-History</a></li>
        <li><a class="_active" href="DiseaseTracker.jsp">Disease Tracker</a></li>
        <li><a href="chatui.jsp">Med-Assistant</a></li>
        <li><a href="#">About us</a></li>
        <li class="dashnav">|</li>
        
        <a href="Logout"><button class="btnclass">Logout</button></a>
    </ul>
</nav>
<!-- NAVBAR END -->
 <div class="MostOuter ">
    <div class="titleboxsy flexb">
    <p class="ptitle">Disease Tracker</p>
    <div class="lineforani"></div>
    </div>
    <div class="navlikeline flexb">
        <div class="linesdiv flexb">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
    </div>
   <div class="boxgrand ">
    <div class="boxO pbox1 flexb">
       <div class="pbox1child1 flexbvertical">
          <div class="symptomcontent flexb">
           
            <div class="agebox flexbvertical">
              <label class="labelsy" for="uage">Age</label>
            <input class="Ageip" type="number" name="uage" id="uage" required>
            </div>
            <div class="genderbox flexbvertical">
                <label class="labelsy" for="ugender">Gender</label>
              <div class="gencon">
                <input class="radiogen" type="radio" name="ugender" id="ugenderM" value="Male" required>
                <label class="labelgen" for="ugenderM">Male</label>
                <input class="radiogen" type="radio" name="ugender" id="ugenderF" value="Female" required>
                <label class="labelgen" for="ugenderF">Female</label>
              </div>
            </div>
          </div>
          <div class="symptombtn flexb">
            
            <!-- <input class="naxtbtn1" type="button" value="Next"> -->
            <button class="naxtbtn1" type="submit">Next</button>
          </div>

       </div>
       <div class="pbox1child2 flexb">
          <div class="imgboxchild flexb">
            <img width="130%" src="Assest/img/Sickboy.png" alt="Sick-Boy img" >
          </div>   
       </div>
    </div>
    <!-- page 2 -->
    <div class="boxO pbox2 flexb">
        <div class="pbox2child1 flexbvertical">
            <div class="symptomcontent flexbvertical ">
               <div class="symtitle3 flexb">
                   <h3 class="tselect">Select respective Boby Symptoms</h3>
               </div>
               <div class="dropdownboxsym flexb">
                <!-- dropdown -->
                <label>
                  Multi-select
                  <input mbsc-input id="demo-multiple-select-input" placeholder="Please select..." data-dropdown="true" data-input-style="outline" data-label-style="stacked" data-tags="true" />
              </label>

              <select class="sele78" id="demo-multiple-select" multiple onchange="selectvalue()" required>
                <option class="opts" value="10">Abdominal pain</option>
                <option class="opts" value="238">Anxiety</option>
                <option class="opts" value="104">Back pain</option>
                <option class="opts" value="75">Burning eyes</option>
                <option class="opts" value="46">Burning in the throat</option>
                <option class="opts" value="170">Cheek swelling</option>
                <option class="opts" value="17">Chest pain</option>
                <option class="opts" value="31">Chest tightness</option>
                <option class="opts" value="175">Chills</option>
                <option class="opts" value="139">Cold sweats</option>
                <option class="opts" value="15">Cough</option>
                <option class="opts" value="207">Dizziness</option>
                <option class="opts" value="244">Drooping eyelid</option>
                <option class="opts" value="273">Dry eyes</option>
                <option class="opts" value="87">Earache</option>
                <option class="opts" value="92">Early satiety</option>
                <option class="opts" value="287">Eye pain</option>
                <option class="opts" value="33">Eye redness</option>
                <option class="opts" value="153">Fast, deepened breathing</option>
                <option class="opts" value="76">Feeling of foreign body in the eye</option>
                <option class="opts" value="11">Fever</option>
                <option class="opts" value="57">Going black before the eyes</option>
                <option class="opts" value="9">Headache</option>
                <option class="opts" value="45">Heartburn</option>
                <option class="opts" value="122">Hiccups</option>
                <option class="opts" value="149">Hot flushes</option>
                <option class="opts" value="40">Increased thirst</option>
                <option class="opts" value="73">Itching eyes</option>
                <option class="opts" value="96">Itching in the nose</option>
                <option class="opts" value="35">Lip swelling</option>
                <option class="opts" value="235">Memory gap</option>
                <option class="opts" value="112">Menstruation disorder</option>
                <option class="opts" value="123">Missed period</option>
                <option class="opts" value="44">Nausea</option>
                <option class="opts" value="136">Neck pain</option>
                <option class="opts" value="114">Nervousness</option>
                <option class="opts" value="133">Night cough</option>
                <option class="opts" value="12">Pain in the limbs</option>
                <option class="opts" value="203">Pain on swallowing</option>
                <option class="opts" value="37">Palpitations</option>
                <option class="opts" value="140">Paralysis</option>
                <option class="opts" value="54">Reduced appetite</option>
                <option class="opts" value="14">Runny nose</option>
                <option class="opts" value="29">Shortness of breath</option>
                <option class="opts" value="124">Skin rash</option>
                <option class="opts" value="52">Sleeplessness</option>
                <option class="opts" value="95">Sneezing</option>
                <option class="opts" value="13">Sore throat</option>
                <option class="opts" value="64">Sputum</option>
                <option class="opts" value="179">Stomach burning</option>
                <option class="opts" value="28">Stuffy nose</option>
                <option class="opts" value="138">Sweating</option>
                <option class="opts" value="248">Swollen glands in the armpits</option>
                <option class="opts" value="169">Swollen glands on the neck</option>
                <option class="opts" value="211">Tears</option>
                <option class="opts" value="16">Tiredness</option>
                <option class="opts" value="115">Tremor at rest</option>
                <option class="opts" value="144">Unconsciousness, short</option>
                <option class="opts"value="101">Vomiting</option>
                <option class="opts" value="181">Vomiting blood</option>
                <option  class="opts"value="56">weakness</option>
                <option class="opts" value="23">Weight gain</option>
                <option  class="opts" value="30">Wheezing</option>
              </select>
                            <!-- End dropdown -->
               </div>
        
            </div>
            <div class="symptombtn flexb">
              <button class="naxtbtn2" type="submit">"Next</button>
              <!-- <input class="naxtbtn2" type="button" value="Next"> -->
            </div>
         </div>
         <div class="pbox2child2  flexb">
            <div class="imgboxchild2 flexb">
              <img width="130%" src="Assest/img/Sickboy.png" alt="Sick-Boy img" >
            </div>   
         </div>
    </div>
    <div class="boxO pbox3 flexb">
        <div class="pbox3child1 flexbvertical">
            <div class="symptomcontent flexbvertical">
                  <div class="resulttitle flexb">
                    <h3 class="tselect">Diagnosed Disease</h3>
                  </div>
                  <div class="alertsym  flexb">
                    <div class="alert alert-primary alert-dismissible fade show" role="alert">
                       Shown results are based on your symptoms , It may vary .
                      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                  </div>
                  <div class="resulttable flexbvertical">
                    <div class="diseasebox">
                      <div class="alert alert-light flexb" role="alert">
                        <div class="disname flexb"><h5>Disease</h5></div>
                        <div class="diserange flexb">
                         Accuracy Percentage
                        </div>
                      </div>
                    </div>
                    <div class="diseasebox">
                      <div class="alert alert-light flexb" role="alert">
                        <div class="disname flexb"><h5 id="disease1" class="disnameb">Working on your data </h5></div>
                        <div class="diserange flexb">
                          <input type="range" name="range1" id="range1"  value="40" min="0" max="100" disabled><p id="perrange1"></p><p>%</p>
                        </div>
                      </div>
                    </div>
                    <div class="diseasebox">
                      <div class="alert alert-light flexb" role="alert">
                        <div class="disname flexb"><h5 id="disease2"  class="disnameb">No other disease matches with your symptoms</h5></div>
                        <div class="diserange flexb">
                          <input type="range" name="range2" id="range2" value="90"  min="0" max="100"  disabled><p id="perrange2"></p><p>%</p>                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="symptombtn flexb">
              
              
              <a href="chatui.jsp"><input class="naxtbtn3" type="button" value="Consult"></a>
            </div>
         </div>
         <div class="pbox3child2 flexb">
            <div class="imgboxchild3 flexb">
              <img width="130%" src="Assest/img/Sickboy.png" alt="Sick-Boy img" >
            </div>
            
         </div>
    </div>
   </div>
 </div>
 <!-- <input type="hidden" name="" id="ipage">
 <input type="hidden" name="" id="ipgender"> -->
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

<script src="Js/DiseaseTrack.js"></script>
<script>
    mobiscroll.select('#multiple-select', {
                  inputElement: document.getElementById('my-input'),
                  touchUi: false
              });
              mobiscroll.setOptions({
    theme: 'ios',
    themeVariant: 'light'
});

mobiscroll.select('#demo-multiple-select', {
    inputElement: document.getElementById('demo-multiple-select-input')
}); 
</script>
</body>
</html>