<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medrec</title>
</head>
<body>
    <%
 
  if(session.getAttribute("name") != null)
  {
		int age = Integer.parseInt(request.getParameter("page"));
		String pname = (String)session.getAttribute("name");
		int pweight = Integer.parseInt(request.getParameter("pweight"));
		int pheight = Integer.parseInt(request.getParameter("pheight"));
		String Bloodg = request.getParameter("pblood");
		String pgender = request.getParameter("pgender");
		String prevdisease = request.getParameter("prevdisease");
		String diabaties = request.getParameter("diabaties");
		String bp = request.getParameter("bp");
		String Heartdise = request.getParameter("Heartdise");
		String Bodycheck = request.getParameter("Bodycheck");
		String Surgeryname = request.getParameter("Surgeryname");
		String ConsultedDoct = request.getParameter("ConsultedDoct");
	    int Patientid = (int)session.getAttribute("id");
	    try{
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
			String qry="INSERT INTO `medhistory`( `pname`, `Page`, `pweight`, `pheight`, `BloodGroup`, `Gender`, `prevDisease`, `Diabaties`, `BloodPressure`, `HeartDise`, `LastBodyCheckD`, `LastSurgery`, `ConsDoctor`, `patientId`, `BloodSugLev`, `OxySatLev`, `LatCheckBp`, `BMI`, `Cholesterollvl`, `HeartRate`, `ResRate`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			 PreparedStatement pst=conn.prepareStatement(qry);  
			  pst.setString(1, pname);   
			 pst.setInt(2, age);
	          
	            pst.setInt(3, pweight);
	            pst.setInt(4, pheight);
	            pst.setString(5, Bloodg);
	            pst.setString(6, pgender);
	            pst.setString(7, prevdisease);
	            pst.setString(8, diabaties);
	            pst.setString(9, bp);
	            pst.setString(10, Heartdise);
	            pst.setString(11, Bodycheck);
	            pst.setString(12, Surgeryname);
	            pst.setString(13, ConsultedDoct);
	            pst.setInt(14, Patientid);
	            pst.setInt(15, 0);
	            pst.setInt(16, 0);
	            pst.setInt(17, 0);
	            pst.setInt(18, 0);
	            pst.setInt(19, 0);
	            pst.setInt(20, 0); 
	            pst.setInt(21, 0);
	          
	            
			 pst.executeUpdate();
			 response.sendRedirect("MedHistory1.jsp");	
	  }catch(Exception e)
	  {
		 out.print(e);
	  }
	  
  }	else
  {
	  response.sendRedirect("RegSignUp.jsp");
  }
        
 %>
</body>
</html>