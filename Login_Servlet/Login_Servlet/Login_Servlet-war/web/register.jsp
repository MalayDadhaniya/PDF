<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register Page</title>
    </head>
    <body>
        <h2>Register Form</h2>
        <form id="registerForm" action="RegisterServlet" method="POST" >
            <label>Username:</label>
            <input type="text" name="username" required>
            <label>Password:</label>
            <input type="password" name="password" required>
            <label>Confirm Password:</label>
            <input type="password" name="confirmPassword" required>
            <button type="submit">Register</button>
        </form>
    </body>
</html>
