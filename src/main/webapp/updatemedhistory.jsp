<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MedRec</title>
</head>
<body>

    <%
 
  if(session.getAttribute("name") != null)
  {
	    String prevdis = request.getParameter("prevdis");
		String diab =  request.getParameter("diab");
		String bp1 = request.getParameter("bp1").toString();
		String heartdis =request.getParameter("heartdis");
		String lsbodycheck = request.getParameter("lsbodycheck");
		String lssur = request.getParameter("lssur");	
		String condct = request.getParameter("condct");	
		String covidvac = request.getParameter("covidvac");
		String sugarlevel = request.getParameter("sugarlevel");
		String covidvacdose = request.getParameter("covidvacdose").toString();
		String allergy1 = request.getParameter("allergy1").toString();
		String allergy2 = request.getParameter("allergy2").toString();
		String ongoingdrug1 = request.getParameter("ongoingdrug1").toString();
		String ongoingdrug2 = request.getParameter("ongoingdrug2").toString();
		
		
		int oxylvl = Integer.parseInt(request.getParameter("oxylvl"));
		int bplvl = Integer.parseInt(request.getParameter("bplvl"));
		int bmi = Integer.parseInt(request.getParameter("bmi"));
		int cholesterol = Integer.parseInt(request.getParameter("cholesterol"));
		int hrate = Integer.parseInt(request.getParameter("hrate"));
		int rrate = Integer.parseInt(request.getParameter("rrate"));
		int pid =Integer.parseInt(session.getAttribute("id").toString());
		
	    try{
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
		  String qry ="UPDATE `medhistory` SET `prevDisease`= ?,`Diabaties`=?,`BloodPressure`=?,`HeartDise`=?,`LastBodyCheckD`=?,`LastSurgery`=?,`ConsDoctor`=?,`BloodSugLev`=?,`OxySatLev`=?,`LatCheckBp`=?,`BMI`=?,`Cholesterollvl`=?,`HeartRate`=?,`ResRate`=? ,`covidvaccinationdoses` =?,`allergy1`=?,`allergy2`=?,`ongoingdrug1`=?,`ongoingdrug2`=? WHERE patientId =?";
			 PreparedStatement pst=conn.prepareStatement(qry);  
			 pst.setString(1,prevdis);
			 pst.setString(2,diab);
			 pst.setString(3,bp1);
			 pst.setString(4,heartdis);
			 pst.setString(5,lsbodycheck);
			 pst.setString(6,lssur);
			 pst.setString(7,condct);
	
			 pst.setString(8,sugarlevel);
			 pst.setInt(9,oxylvl);
			 pst.setInt(10,bplvl);
			 pst.setInt(11,bmi);
			 pst.setInt(12,cholesterol);
			 pst.setInt(13,hrate);
			 pst.setInt(14,rrate);
			 pst.setString(15,covidvacdose);
			 pst.setString(16,allergy1);
			 pst.setString(17,allergy2);
			 pst.setString(18,ongoingdrug1);
			 pst.setString(19,ongoingdrug2);
			

			 pst.setInt(20,pid);
	          
	            
			 pst.executeUpdate();
			 response.sendRedirect("MedHistory1.jsp");	
	  }catch(Exception e)
	  {
		System.out.println(e);
	  }
	    
	  
  }	else
  {
	  response.sendRedirect("RegSignUp.jsp");
  }
        
 %>
</body>
</html>
