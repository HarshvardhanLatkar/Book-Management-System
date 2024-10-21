package com.hl.BMS;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("username");
		String password = req.getParameter("password");
		
		String url = "jdbc:mysql://localhost:3306/book?user=root&password=sql123";
		String Query = "SELECT * FROM login WHERE UserName = ? AND Password = ?";
		String Driver = "com.mysql.cj.jdbc.Driver";
		
		try {
			Class.forName(Driver);
			Connection connection = DriverManager.getConnection(url);
			PreparedStatement pstmt = connection.prepareStatement(Query);
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				resp.sendRedirect("homepage");
				
				
			} else {
				PrintWriter pw = resp.getWriter();
				resp.setContentType("text/html");
				pw.println("<h1>INVALID USERNAME OR PASSWORD</h1>");
				RequestDispatcher dis = req.getRequestDispatcher("Login.jsp");
				dis.include(req, resp);
			}
			connection.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
