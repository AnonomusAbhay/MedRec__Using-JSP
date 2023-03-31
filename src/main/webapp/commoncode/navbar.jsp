<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <li><a class="_active" href="index.jsp">Home</a></li>  
        <li><a href="#">Med-History</a></li>
        <li><a  href="#">Disease Tracker</a></li>
        <li><a href="#">Med-Assistant</a></li>
        <li><a href="#">About us</a></li>
        <li class="dashnav">|</li>
        <a href="RegSignUp.jsp"><button class="btnclass">Sign-in</button></a>
        <a href="logout"><button class="btnclass">Logout</button></a>
    </ul>
</nav>
<!-- NAVBAR END -->