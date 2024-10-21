package com.hl.BMS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addbook")
public class addBook extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("bookId"));
		String bookName = req.getParameter("bookName");
		String authorName = req.getParameter("authorName");
		Double price = Double.parseDouble(req.getParameter("bookPrice"));
		int pages = Integer.parseInt(req.getParameter("bookPages"));
		
		String url = "jdbc:mysql://localhost:3306/book?user=root&password=sql123";
		String Query = "INSERT INTO books (bookId, bookName, authorName, price, pages) VALUES (?, ?, ?, ?, ?)";
		String Driver = "com.mysql.cj.jdbc.Driver";
		
		try {
			Class.forName(Driver);
			Connection connection = DriverManager.getConnection(url);
			PreparedStatement pstmt = connection.prepareStatement(Query);
			pstmt.setInt(1, id);
			pstmt.setString(2, bookName);
			pstmt.setString(3, authorName);
			pstmt.setDouble(4, price);
			pstmt.setInt(5, pages);
			
			int status = pstmt.executeUpdate();
			if (status != 0 ) {
				resp.sendRedirect("homepage");
			} 
			else {
				PrintWriter writer = resp.getWriter();
				resp.setContentType("text/html");
				writer.println("<center><h1>ID ALREADY PRESENT IN THE SYSTEM</h1></center>");
				RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
				dispatcher.include(req, resp);
			}
			connection.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
