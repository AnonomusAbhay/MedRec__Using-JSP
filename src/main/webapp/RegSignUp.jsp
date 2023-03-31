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
    <!-- bootstrap not include as same classes -->
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/signupcss.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    <style>
      
    </style>
</head>
<body>

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
                <li><a class="_active" href="index.jsp">Home</a></li>
                <li><a  href="RegSignUp.jsp">Registration</a></li>
                
                <li><a href="#">Med-History</a></li>
                <li><a  href="#">Disease Tracker</a></li>
                <li><a href="#">Med-Assistant</a></li>
                <li><a href="#">About us</a></li>
                <li class="dashnav">|</li>
                <a href="sign-up.php"><button class="btnclass">Sign-in</button></a>
            </ul>
        </nav>        <!--End navbar -->

        
        <input type="hidden" id="status" value="<%= request.getAttribute("status") %>" />
        <input type="hidden" id="statusLogin" value="<%= request.getAttribute("statusLogin") %>" />
        <!-- sign-up -->
      
        <div class="container">
            <div class="forms-container">
                <div class="signin-signup">
                    <form action="login" method="post" class="sign-in-form">
                        <h2 class="title">Sign in</h2>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" name="loginusername" placeholder="Username" required />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" name="loginpass" placeholder="Password" autocomplete="on" required />
                        </div>
                        <input type="submit" name="loginu" value="Login" class="btn solid" />
                        <p class="social-text">Or Sign in with social platforms</p>
                        <div class="social-media">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </div>
                    </form>
    
                    <form action="register" method="post" id="form_id" class="sign-up-form">
                        <h2 class="title">Sign up</h2>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input onkeyup="validateFullName()" id="FullName" name="fullname" type="text" autocomplete="off"
                                placeholder="Full Name" required />
                            <div class="icons">
                                <span class="iconnamef fas fa-exclamation"></span>
                                <span class="iconnamet fas fa-check"></span>
                            </div>
                        </div>
                        <div class="error-text-name">
                            <p id="errormsgname"> </p>
                        </div>
    
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input onkeyup="validate()" id="username" name="username" type="text" autocomplete="off"
                                placeholder="Username" required />
                            <div class="icons">
                                <span class="icon1 fas fa-exclamation"></span>
                                <span class="icon2 fas fa-check"></span>
                            </div>
                        </div>
                        <div class="error-text">
                            <p id="errormsg"> </p>
                        </div>
    
                        <div class="input-field">
                            <i class="fas fa-envelope"></i>
                            <input onkeyup="check()" id="email" name="email" type="text" autocomplete="off"
                                placeholder="Enter Email Address" required />
                            <div class="icons">
                                <span class="icon1-1 fas fa-exclamation"></span>
                                <span class="icon2-1 fas fa-check"></span>
                            </div>
                        </div>
                        <div class="error-text1">
                            <p id="errormsg1"> </p>
                        </div>
    
    
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input onkeyup="passvalidate()" id="pass" name="pass" type="password"
                                placeholder="Enter Password" autocomplete="on" required />
                            <div class="icons">
                                <span class="iconpassf fas fa-exclamation"></span>
                                <span class="iconpasst fas fa-check"></span>
                            </div>
                        </div>
                        <div class="error-text-pass">
                            <p id="errormsgpass"> </p>
                        </div>
    
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input onkeyup="passvalidateconf()" id="passconf" name="passc" type="password"
                                placeholder="Confirm Password" autocomplete="on" required />
                            <div class="icons">
                                <span class="iconconpassf fas fa-exclamation"></span>
                                <span class="iconconpasst fas fa-check"></span>
                            </div>
                        </div>
                        <div class="error-text-conpass">
                            <p id="errormsgconpass"> </p>
                        </div>
    
                        <select onclick="choose_role()" class="input-field" name="role" id="role" required>
                            <i class="fas fa-lock"></i>
                            <option>--- Select User Type ---</option>
                            <option value="Patient">Patient</option>
                            <option value="Doctor">Doctor</option>
                        
                        </select>
                        <div class="input-field" id="doctordegree1" style="display: none;">
                            <i class="fa fa-id-badge"></i>
                            <!-- <input  id="doctordegree" name="doctordegree" type="file"
                                placeholder="Confirm Password" autocomplete="on" required /> -->
                                <input class="doctordegree1" type="button" value="Upload Doctor Certificate" onclick="document.getElementById('getfile').click()" />
                                <!-- <button  class="doctordegree1" onclick="document.getElementById('getfile').click()">Upload Doctor Certificate</button> -->
                                <input  id="getfile" name="file" type="file" accept="image/*
                                 autocomplete="on" style="display: none;" />
                            <div class="icons">
                                <span class="iconconpassf fas fa-exclamation"></span>
                                <span class="iconconpasst fas fa-check"></span>
                            </div>
                        </div>
    
                        <!-- <input type="submit" name="signup" class="btn" value="Sign up" /> -->
                        <button class="btnclass btn-edit" id="submit" onclick="changePg()">Sign Up</button>
                    </form>
                </div>
            </div>
    
            <div class="panels-container">
                <div class="panel left-panel">
                    <div class="content">
                        <h3>New here ?</h3>
                        
                        <p>
                           Join our medrec platform to get medical services like store medical history, Diagnosis disease , medical assistance at one place 
                        </p>
                        <button class="btn transparent" id="sign-up-btn">Sign up</button>
                    </div>
                    <img src="Assest/img/doctor1.svg" class="image" alt="" />
                </div>
                <div class="panel right-panel">
                    <div class="content">
                        <h3>One of us ?</h3>
                        <p>
                            Sign-in to get all medrec health services at your fingertip
                        </p>
                        <button class="btn transparent" id="sign-in-btn">Sign in</button>
                    </div>
                    <img src="Assest/img/Doctorwithpat.svg" class="image" alt="regimg" />
                </div>
            </div>
        </div>
  
        <!-- end sign-up -->
        <!-- Footer -->
    <jsp:include page="commoncode/Footer.jsp"></jsp:include>  
    <!--End Footer -->
    <script src="Js/app.js"></script>
    <script src="Js/signup.js"></script>
    <script src="Js/sweetalert.min.js"></script>
    <script>
        let status = document.getElementById("status").value;
        let statusLog = document.getElementById("statusLogin").value;
        if(status == "success")
        	{
        	swal("Registartion Successful..!", "You can now sign in to MedRec!", "success");
        
        	}
        if(statusLog == "error")
        	{
        	swal("Sorry", "Wrong username or password !", "error");
        	}
 

    </script>
</body>
</html>