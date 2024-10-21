package com.hl.BMS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sort")
public class sortByPrice extends HttpServlet
{
	 @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        String url = "jdbc:mysql://localhost:3306/book?user=root&password=sql123";
	        String query = "SELECT * FROM books ORDER BY price";
	        String Driver = "com.mysql.cj.jdbc.Driver";
	        
	        List<Book> books = new ArrayList<>();

	        try {
	            Class.forName(Driver);
	            Connection connection = DriverManager.getConnection(url);
	            Statement stmt = connection.createStatement();
	            ResultSet rs = stmt.executeQuery(query);
	            
	            while (rs.next()) {
	                Book book = new Book();
	                book.setBookId(rs.getInt("bookId"));
	                book.setBookName(rs.getString("bookName"));
	                book.setAuthorName(rs.getString("authorName"));
	                book.setPages(rs.getDouble("pages"));
	                book.setPrice(rs.getInt("price"));
	                books.add(book);
	            }

	            if (!books.isEmpty()) {
	                req.getSession().setAttribute("listOfBooks", books);
	                resp.sendRedirect("Home.jsp");
	            } else {
	                PrintWriter writer = resp.getWriter();
	                resp.setContentType("text/html");
	                writer.println("<center><h1>No books available to sort by price</h1></center>");
	                RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
	                dispatcher.include(req, resp);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
