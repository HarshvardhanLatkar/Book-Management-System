<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Book Management System</title>
 <style type="text/css">
 /* Reset some basic styles */
body, h2, p, input, button {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* Body Styling */
body {
    background: linear-gradient(135deg, #89fffd, #ef32d9);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    display: flex;
    flex-direction: column;
}

#head {
    font-size: 90px;
    padding-bottom:40px;
    margin-bottom: 30px;
    color: #ffffff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
    text-align: center;
    width: 80vw;
}

/* Container Styling */
.login-container {
    background-color: white;
    padding: 30px 40px;
    border-radius: 10px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    text-align: center;
    width: 100%;
    max-width: 400px;
}

/* Heading Styling */
.login-container h2 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #333;
}

/* Input Group Styling */
.input-group {
    margin-bottom: 20px;
    text-align: left;
}

.input-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 8px;
    color: #555;
}

.input-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
    transition: border-color 0.3s ease;
}

.input-group input:focus {
    border-color: #89fffd;
    outline: none;
}

/* Button Styling */
.btn-login {
    background-color: #ef32d9;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 12px;
    width: 100%;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn-login:hover {
    background-color: #ff89fd;
}

/* Register Link Styling */
.register-link {
    margin-top: 20px;
    color: #555;
}

.register-link a {
    color: #ef32d9;
    text-decoration: none;
    font-weight: bold;
    transition: color 0.3s ease;
}

.register-link a:hover {
    color: #ff89fd;
}
 
 </style>
</head>
<body>
	<div id="head"><b>Book Management System</b></div>
	 <div class="login-container">
        <h2>Sign Up</h2>
        <form action="signUp" method="post">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn-login" >Sign Up</button>
            <p class="register-link">Already have an account? <a href="Login.jsp">Login</a></p>
        </form>
    </div>
</body>
</html>