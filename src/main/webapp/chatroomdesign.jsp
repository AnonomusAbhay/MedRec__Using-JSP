<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- checking signedin user or not -->



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>MedRec</title>
    <link rel="stylesheet" href="css/Navbar.css">
    <link rel="stylesheet" href="css/Footercss.css">
    <link rel="stylesheet" href="css/BS_css/css/BS.min.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/chatrromdesign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
</head>

<body>
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
        <li><a  href="DiseaseTracker.jsp">Disease Tracker</a></li>
        <li><a class="_active" href="chatroomdesign.jsp">Med-Assistant</a></li>
        <li><a href="#">About us</a></li>
        <li class="dashnav">|</li>
        
        <a href="Logout"><button class="btnclass">Logout</button></a>
    </ul>
</nav>
    

    <div class="ousidecontainer">
        <div class="insidecontainer">
            <div class="profilechat">
                <div class="userprofside">
                    <div class="profimgside">
                        <img class="imageprof" src=" assets/img/profileimg.png"
                            alt="profile img" />
                    </div>
                </div>
                <div class="profnameside">
                    <h3><%
                    out.print(session.getAttribute("name"));
                    %></h3>
                </div>
                <div class="profbtn">
                    <a href="#"> <input type="submit" name="Editprof" class="btn3 editbtn"
                            value="Edit" /></a>
                    <input type="submit" name="Logout" class="btn3 logoutbtn" value="Logout" />
                </div>
            </div>

            <div class="chatbox">
                <div class="chattitle">
                    <div class="profpicbox">
                        <img class="profimg" src="assets/img/profileimg.png" alt="no" />
                    </div>
                    <div class="profname">
                        <div class="nametitle">
                            <h2><%
                    out.print(session.getAttribute("name"));
                    %></h2>
                        </div>
                        <div class="status">
                            <h5>online</h5>
                        </div>
                    </div>
                </div>
                <div class="chatmsgbox">

                </div>


                <form action="#" class="typing-area" method="post">
                    <input type="text" class="incoming_id" name="incoming_id" value="<?php echo $Id; ?>" hidden>

                    <div class="msginputbox">
                        <input class="msginput" type="text" placeholder="Type Message" name="message"
                            id="input-field" />

                        <div class="sendicon">
                            <button class="sendbtn">
                                <img src="profimg/send-message.png" alt="">
                            </button>
                </form>
                <!-- <i class="fa-solid fa-paper-plane-top"></i> -->
            </div>
        </div>
    </div>
    </div>
    </div>
    <!-- FOOTER -->
    
    <!-- FOOTEREND -->

    <script src="Js/chat.js"></script>
    
    
</body>

</html>