<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hl.BMS.Book" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Management System</title>
<style type="text/css">
body {
    background: linear-gradient(135deg, #89fffd, #ef32d9);
    justify-content: start;
    align-items: center;
    display: flex;
    flex-direction: column;
    margin: 0;
    min-height: 100vh; 
    height: auto; 
    padding-bottom: 20px; 
}

#head {
    font-size: 90px;
    margin-bottom: 30px;
    color: #ffffff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
    text-align: center;
    width: 80vw;
}
/* Main Head Container */
.main-head {
    display: flex;
    align-items: center;
    justify-content: space-around;
    width: 100%;
}

/* Button Styling */
.btn-action {
    background-color: #ee685c;
    color: white;
    border: none;
    border-radius: 8px;
    padding: 10px 20px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    margin: 10px 0;
    width: 180px; 
    text-align: center;
}

.btn-action:hover {
    background-color: #ff877f;
    transform: translateY(-2px);
}

#container {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 85%;
    margin: auto;
    background-image: url('https://c1.wallpaperflare.com/preview/127/366/443/library-book-bookshelf-read.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    padding: 40px; 
}

#table-container {
    width: 70rem;
    color: black;
    background-color: #89fffd;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    height: auto; 
    max-height: 80vh; 
    overflow-y: auto; 
}


table {
    border-collapse: collapse;
    width: 100%;
    background: #ffffff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

th, td {
    border: 2px solid #333;
    padding: 12px;
    text-align: center;
}

th {
    background-color: #f2f2f2;
    color: #333;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:hover {
    background-color: #f1f1f1;
}
</style>
</head>
<body>

   <div class="main-head">
    <div id="head"><b>Book Management System</b></div>
    <div>
       <form action="addNewBook.jsp" method="post">
           <button type="submit" class="btn-action">Add book</button>
       </form>
       <form action="sort" method="post" class="sort">
    <button type="submit" class="btn-action">Sort By Price</button>
	</form>

    </div>
   </div>

<div id="container">    
    <div id="table-container">
    <div>
        <table>
            <tr>
                <th>ID</th>
                <th>Book Name</th>
                <th>Author Name</th>
                <th>Pages</th>
                <th>Price</th>
            </tr>
            <%
            List<Book> books = (List)session.getAttribute("listOfBooks");
            if (books != null) {
                for (com.hl.BMS.Book book : books) {
            %>
            <tr>
                <td><%= book.getBookId() %></td>
                <td><%= book.getBookName() %></td>
                <td><%= book.getAuthorName() %></td>
                <td><%= book.getPages() %></td>
                <td><%= book.getPrice() %></td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="5">No books available</td>
            </tr>
            <%
            }
            %>
        </table>
        </div>
    </div>
</div>

</body>
</html>
