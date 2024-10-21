<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
<link rel="stylesheet" href="Home.css">
<style type="text/css">
/* Body Styling */
body {
    background: linear-gradient(135deg, #89fffd, #ef32d9);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* Heading Styling */
h1 {
    font-size: 32px;
    color:  #ff6f61;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
    margin-bottom: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    
}

/* Add Book Container */
.add-book-container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 15px 30px;
    border-radius: 10px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
    text-align: left;
    width: 350px;
}

/* Form Styling */
.add-book-form {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

/* Input Field Styling */
.input-field {
    width: 100%;
    padding: 8px; 
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
    box-sizing: border-box;
}

/* Button Styling */
.btn-action {
    background-color: #ff6f61;
    color: white;
    border: none;
    border-radius: 8px;
    padding: 10px;
    font-size: 16px; 
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    margin-top: 10px;
    width: 100%;
    text-align: center;
}

.btn-action:hover {
    background-color: #ff877f;
    transform: translateY(-2px);
}

</style>
</head>
<body>
<center>
    <div class="add-book-container">
        <h1>ADD BOOK DETAILS</h1>
        <form action="addbook" method="post" class="add-book-form">
            <label for="bookId">BOOK ID:</label>
            <input type="text" name="bookId" id="bookId" class="input-field">
            <br>
            <label for="bookName">BOOK NAME:</label>
            <input type="text" name="bookName" id="bookName" class="input-field">
            <br>
            <label for="authorName">AUTHOR NAME:</label>
            <input type="text" name="authorName" id="authorName" class="input-field">
            <br>
            <label for="bookPrice">BOOK PRICE:</label>
            <input type="text" name="bookPrice" id="bookPrice" class="input-field">
            <br>
            <label for="bookPages">BOOK PAGES:</label>
            <input type="text" name="bookPages" id="bookPages" class="input-field">
            <br>
            <button type="submit" class="btn-action">ADD</button>
        </form>
    </div>
</center>
</body>
</html>
