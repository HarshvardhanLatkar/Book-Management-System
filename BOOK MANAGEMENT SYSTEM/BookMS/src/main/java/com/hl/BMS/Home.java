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
import javax.servlet.http.HttpSession;

@WebServlet("/homepage")
public class Home extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String url = "jdbc:mysql://localhost:3306/book?user=root&password=sql123";
		String Query = "SELECT * FROM books";
		String Driver = "com.mysql.cj.jdbc.Driver";
		
		try {
			Class.forName(Driver);
			Connection connection = DriverManager.getConnection(url);
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(Query);
			
			List<Book> books = new ArrayList<Book>();
			if (rs.isBeforeFirst()) {
				while(rs.next()) {
					Book book = new Book(rs.getInt("bookId"),
											rs.getString("bookName"),
											rs.getString("authorName"),
											rs.getDouble("pages"),
											rs.getInt("price"));
					
					books.add(book);
				}
				
				HttpSession session = req.getSession();
				session.setAttribute("listOfBooks", books);
				RequestDispatcher dis = req.getRequestDispatcher("Home.jsp");
				dis.include(req, resp);
			} else {
				PrintWriter pw = resp.getWriter();
				resp.setContentType("text/html");
				pw.println("<h1>NO RECORDS FOUND</h1>");
				RequestDispatcher dis = req.getRequestDispatcher("Login.jsp");
				dis.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
