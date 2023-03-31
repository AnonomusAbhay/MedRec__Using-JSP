<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<% 

if(session.getAttribute("name") == null)
{
	   response.sendRedirect("RegSignUp.jsp");
}


int outgoing_id = Integer.parseInt(session.getAttribute("id").toString());
int incoming_id = 0;
Connection conn = null;
String role=null;
String url = "jdbc:mysql://localhost:3306/medrec1?useSSL=false";
String user = "root";
String password = "";
try {
Class.forName("com.mysql.cj.jdbc.Driver");
conn = DriverManager.getConnection(url, user, password);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT `Urole` FROM `registration` WHERE UId ="+ outgoing_id );
while (rs.next()) {
     role  = rs.getString("Urole").toString();
   
}
}
catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%> 
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MedRec</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/Navbar.css">
        <link rel="stylesheet" href="css/Footercss.css">
        <!-- <link rel="stylesheet" href="css/BS_css/css/BS.min.css"> -->
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
        <link rel="stylesheet" href="./css/chat.css">

   
</head>

<body>
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
    <div class="outer-container">
        <div class="chat-container">
           
            <div class="user-det" id="user-det">
                <div class=" message-box search-bar">
                    <div class="txt-box">
                        <i class="fa-solid fa-magnifying-glass searchiconpos"></i>
                        <input type="text" class="searchbox" id="searchbox" placeholder="Search Doctors .. " onkeyup="search()">
                    </div>
                    <div class="searchicon">
                    <button   onclick="clearip()"><i class="fa-solid fa-xmark pe-3"></i></button>
                </div>
                </div>
                <div id="user-lists">
                    <div  class="user-det">
                    
                <%
           
                Statement stmt = conn.createStatement();
                String output = ""; 
        		 ResultSet rs ;
        		 String temprole="Patient";
        		
               if(role.equals(temprole))
               { 
            	   
                   rs = stmt.executeQuery("SELECT * FROM `registration` WHERE UId !="+ outgoing_id +" AND `Urole` ='Doctor' AND `verifystatus`= 1 ");
  
            	  
 
               }else
               { 
                rs = stmt.executeQuery("SELECT * FROM `registration` WHERE UId !="+ outgoing_id );
            	   
               }
                while (rs.next()) {
                    int Id = rs.getInt("UId");
String Name = rs.getString("Uname");

%>
<a class="user-content" onclick="showchat(<%=Id%>)"><div class="prof-img"><img src="./userprof2.png" width="100%" alt="Profile"></div><div class="username">
<%= Name %>
</div></a>                 <% }%>
                    
      
</div>
</div>

            </div>
           
            <div class="chat-box">
<!--  -->

   

<!--  -->
                <img src="Assest/img/chatp.jpg" alt="" class="chat-img">
          
                <div class="chat">
                    <div id="chat-content">
                    <div class="receive-user">
                        <div id="back-btn" style="display: none;">
                            <button class="btn btn-outline " onclick="hidechat()"><i class="fa-solid fa-circle-arrow-left icon-size"></i></button>
                        </div>
                        <div class="receive-user" id="receive-user">
                        
                        </div>
                    </div>
                    <div class="message-content" id="message-content">
                        
                       

                    </div>
                    </div>
                    <div id="chat-form" class="message-box">
                        <input type="hidden" value="<%=incoming_id %>" name="incoming_id" id="incoming_id">
                        <div class="txt-box">

                            <input type="text" class="msg" id="msg" placeholder="Type your Message Here.." name="msg">
                        </div>
                        
                        <button class="btn btn-outline submitbtn" type="submit" id="submitbtn"  onclick="insertmsg()">
                            <img src="./Mail-12-512.png" alt="Send" srcset="" class="send-btn-img">

                        </button>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!-- Footer -->
        <jsp:include page="commoncode/Footer.jsp"></jsp:include>  
        <!--End Footer -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
 
<script>
   

   
        const showchat = (Id) => {
            
            
            document.getElementsByClassName("chat-img")[0].style.display = "none";
           
            document.getElementsByClassName("chat")[0].setAttribute("style","display:block");
            if (screen.width < 800) {

                document.getElementsByClassName("user-det")[0].style.display = "none";
                document.getElementsByClassName("chat-box")[0].style.display = "block";
                document.getElementsByClassName("chat-box")[0].style.width = "85%";
                document.getElementById("back-btn").style.display = "block";

            }
            else {
                document.getElementById("back-btn").style.display = "none";
                document.getElementsByClassName("user-det")[0].style.display = "flex";
       
                document.getElementsByClassName("chat-box")[0].setAttribute("style","display:block");
                document.getElementsByClassName("chat-box")[0].style.position = "static";
                document.getElementsByClassName("user-det")[0].style.position = "static";
                document.getElementsByClassName("chat-container")[0].style.gap = "2rem";


            }

         document.querySelector("#incoming_id").value = Id;
  let xhr = new XMLHttpRequest();
    xhr.open("POST","displayuser.jsp", true);
    xhr.onload = () => {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {
            document.querySelector("#receive-user").innerHTML = xhr.responseText;
        }
      }
    };
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(
      "Id="+Id
    );
        }



        const hidechat = () => {

            document.getElementById("back-btn").style.display = "none";
            document.getElementsByClassName("chat-box")[0].style.display = "none";

            document.getElementsByClassName("user-det")[0].style.display = "flex";
            document.getElementsByClassName("user-det")[0].style.width = "100%";

        }

const clearip = () => {
   
    document.getElementById("searchbox").value = "";
    search()
}
        window.addEventListener("resize",function(e) {
        if(document.body.clientWidth > 800)
        {
            document.getElementById("back-btn").style.display = "none";
          
                document.getElementsByClassName("chat-box")[0].style.display ="block";
                document.getElementsByClassName("user-det")[0].style.display ="flex";
          
        }
        else
        {
            document.getElementsByClassName("user-det")[0].style.display = "flex";
            document.getElementsByClassName("user-det")[0].style.width = "100%";
            document.getElementsByClassName("chat-box")[0].style.display ="none";
        }
    })

</script>
    <script src="./Js/chat.js"></script>
</body>

</html>

