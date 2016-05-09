<%-- 
    Document   : register
    Created on : May 9, 2016, 8:56:01 AM
    Author     : haris.dwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
        <form action="registerValidation.jsp" method="POST">
            <b>Username:</b><br>
            <input type="text" name="username" required><br>
            <b>Email:</b><br>
            <input type="text" name="email" required><br>
            <b>Password:</b><br>
            <input type="password" name="password" required><br>
            <input type="submit" name="submit" value="Submit">
        </form>
    </body>
</html>
