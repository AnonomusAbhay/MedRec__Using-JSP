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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    
    <style>
        .fixedParallex {
            position: fixed;
        }
    
        .fixedParallexcar {
            position: fixed;
            top: 10vh;
            width: 100vw;
        }
    
        .main {
            position: absolute;
            top: 650px;
        }
    
        @media only screen and (max-width: 910px) {
            .main {
                position: static;
            }
        }
    
        @media only screen and (max-width: 950px) {
    
            .carousel,
            .Navbar {
                position: static;
            }
    
            .carousel-control-next {
                z-index: 0;
            }
        }
        </style>
</head>
<body>
<%
   if(session.getAttribute("name") == null)
   {%>
    <nav class="Navbar fixedParallex">
    <div class="logo">
        MedRec
    </div>
    <input type="checkbox" id="navtoggle" />
    <label for="navtoggle" class="icon-btn">
        <i class="fas fa-bars"></i>
    </label>
    <ul class="nav-ul">
        <li><a class="_active" href="index.jsp">Home</a></li>  
        <li><a href="MedHistoryForm.jsp">Med-History</a></li>
        <li><a  href="DiseaseTracker.jsp">Disease Tracker</a></li>
        <li><a href="#">Med-Assistant</a></li>
        <li><a href="#">About us</a></li>
        <li class="dashnav">|</li>
        <a href="RegSignUp.jsp"><button class="btnclass">Sign-in</button></a>
        
    </ul>
</nav>
   <%}else { %>
   <nav class="Navbar fixedParallex">
    <div class="logo">
        MedRec
    </div>
    <input type="checkbox" id="navtoggle" />
    <label for="navtoggle" class="icon-btn">
        <i class="fas fa-bars"></i>
    </label>
    <ul class="nav-ul">
        <li><a class="_active" href="index.jsp">Home</a></li>  
         <li><a href="MedHistoryForm.jsp">Med-History-Form</a></li>
         <li><a href="MedHistory1.jsp">Med-History</a></li>
 
        <li><a  href="DiseaseTracker.jsp">Disease Tracker</a></li>
        <li><a href="chatui.jsp">Med-Assistant</a></li>
        <li><a href="#">About us</a></li>
        <li class="dashnav">|</li>
        
        <a href="Logout"><button class="btnclass">Logout</button></a>
    </ul>
</nav>
   <% } %>

 
  
    	<!-- NAVBAR -->

<!-- NAVBAR END -->
   
 
<!--  -->
    <!-- CArouse -->

    <div id="carouselExampleInterval" class="carousel slide fixedParallexcar" data-bs-ride="carousel">
        <div class="carousel-inner" style="position: relative">
            <div class="carousel-item active" data-bs-interval="10000">
                <div class="in_carosouel_text">
                    <div class="Text_center">
                        <div class="h1incar">
                            <h1>WELCOME TO MedRec</h1>
                        </div>
                        <div class="sloganincar">
                            <h4>One Step for easy diagnosis</h4>
                        </div>
                        <div class="paraincar">
                            <p>
                                Join us to track your health and get all heath realted solutions at one place... 

                            </p>
                        </div>
                        <div class="btn">
                            <a href="RegSignUp.jsp"><button class="btnclass2">Join us</button></a>
                        </div>
                    </div>
                </div>
                <img src="Assest/img/Medbk1.jpg" class="d-block w-100 imgincar imgh" alt="carouselimg"  />
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <div class="in_carosouel_text">
                    <div class="Text_center">
                        <div class="h1incar">
                            <h1>WELCOME TO MedRec</h1>
                        </div>
                        <div class="sloganincar">
                            <h4>One Step for easy diagnosis</h4>
                        </div>
                        <div class="paraincar">
                            <p>
                                Join us to track your health and get all heath realted solutions at one place... 

                            </p>
                        </div>

                        <div class="btnincar">
                            <a href="RegSignUp.jsp"><button class="btnclass2">Join us</button></a>
                        </div>
                    </div>
                </div>
                <img src="Assest/img/Medbk2.jpg" class="d-block w-100 imgincar imgh" alt="carouselimg" />
            </div>
            <div class="carousel-item">
                <div class="in_carosouel_text">
                    <div class="Text_center">
                        <div class="h1incar">
                            <h1>WELCOME TO MedRec</h1>
                        </div>
                        <div class="sloganincar">
                            <h4>One step for easy diagnosis</h4>
                        </div>
                        <div class="paraincar">
                            <p>
                                Join us to track your health and get all heath realted solutions at one place... 
                        </div>
                        <div class="btn">
                            <a href="RegSignUp.jsp"><button class="btnclass2">Join us</button></a>
                        </div>
                    </div>
                </div>
                <img src="Assest/img/Medbk3.jpg" class="d-block w-100 imgincar imgh" alt="carouselimg" />
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- end carousel -->
    <!--  box-->
    <div class="main">
        <section class="boxes">
            <section class="why-sec">
                <h1>Why MedRec ?</h1>
                <p>
                  MedRec is online platform which give facility to track your Disease based on symptoms, Give facility to store medical history with easy share facility , Also provide medical consultancy with medical Assistance 
                </p>
                <button class="btnclass2">Read More</button>
            </section>
            <section class="box">
                <div class="front">
                    <div class="upper">
                        <div class="mid">
                            <div class="midicon">
                                <i class="fa fa-medkit fa-3x" aria-hidden="true" ></i>

                            </div>
                        </div>
                    </div>
                    <div class="down">
                        <h4>Med History</h4>
                        <p class="lorem-paragraph">
                           Want quick and organised acesses to your medical history ? 
                        </p>
                    </div>
                </div>
                <div class="back">
                    <p class="center">
                      MedRec provide facility to store your medical history with security and gives a facility to share medical history with doctor 
                </div>
            </section>
            <section class="box">
                <div class="front">
                    <div class="upper">
                        <div class="mid">
                             <div class="midicon">
                                <i class="fa fa-heartbeat fa-3x" aria-hidden="true"></i>

                            </div>
                        </div>
                    </div>
                    <div class="down">
                        <h4>Disease Tracker</h4>
                        <p class="lorem-paragraph">
                            Want to track your disease based on your body symptoms
                        </p>
                    </div>
                </div>
                <div class="back">
                    <p class="center">MedRec give facility to track your disease based on body symptoms . </p>
                </div>
            </section>
            <section class="box">
                <div class="front">
                    <div class="upper">
                        <div class="mid">
                             <div class="midicon">
                               <i class="fa fa-user-md fa-3x" aria-hidden="true"></i>

                            </div>
                        </div>
                    </div>
                    <div class="down">
                        <h4> Med-Assistant</h4>
                        <p class="lorem-paragraph">Need personalised medical guidance with online consultancy facility ?</p>
                    </div>
                </div>
                <div class="back">
                    <p class="center">
                       MedRec provide Medical Assistance with online consultancy using chat and video call with doctor  
                    </p>
                </div>
            </section>
        </section>
        <!-- endbox -->
<!--  --
    <!-- Footer -->
    <jsp:include page="commoncode/Footer.jsp"></jsp:include>  
    <!--End Footer -->

 <script src="css/BS_css/js/BS.min.js"></script>

</body>
</html>