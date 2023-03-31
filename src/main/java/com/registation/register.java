package com.registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.*;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;

@WebServlet("/register")
 
		
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		


		

		String Fname = request.getParameter("fullname");
		String Uname = request.getParameter("username");
		String Uemail = request.getParameter("email");
		String Upass = request.getParameter("pass");
		String Urole = request.getParameter("role");
	
       RequestDispatcher dispatcher =null;
       Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
			PreparedStatement stmt = conn.prepareStatement("INSERT INTO `registration`(`Fname`, `Uname`, `Uemail`, `Upass`, `Urole`) VALUES(?,?,?,?,?)");
			stmt.setString(1, Fname);
			stmt.setString(2, Uname);
			stmt.setString(3, Uemail);
			stmt.setString(4, Upass);
			stmt.setString(5, Urole);
			
			
			int rowCount=stmt.executeUpdate();
			dispatcher = request.getRequestDispatcher("/RegSignUp.jsp");
			if(rowCount > 0)
			{
			request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "error");	
			}
			dispatcher.forward(request, response);
			
			

		} catch (Exception e) {
           e.printStackTrace();
       	PrintWriter out= response.getWriter();
		out.print(e);
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}

	}


}
