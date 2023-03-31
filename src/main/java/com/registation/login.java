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
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Uemail=request.getParameter("loginusername");
		String Upass=request.getParameter("loginpass");
		Connection conn=null;
		  RequestDispatcher dispatcher =null;
		HttpSession session =request.getSession();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medrec1?useSSL=false", "root", "");
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM `registration` WHERE `Uemail`=? and Upass=?  ");
			stmt.setString(1, Uemail);
			stmt.setString(2, Upass);
			ResultSet rs =stmt.executeQuery();
			if(rs.next())
			{
				session.setAttribute("name", rs.getString("Uname"));
				session.setAttribute("id", rs.getInt("UId"));
				dispatcher =request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("statusLogin", "error");
				dispatcher =request.getRequestDispatcher("RegSignUp.jsp");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
           e.printStackTrace();
		}finally {
			try {
			conn.close();
			} catch (Exception e) {
				PrintWriter out= response.getWriter();
				out.print(e);
//				e.printStackTrace();
			}
		}
	}

}
