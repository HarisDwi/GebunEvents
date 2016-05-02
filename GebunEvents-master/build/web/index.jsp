<%-- 
    Document   : index
    Created on : 11 Apr 16, 13:17:38
    Author     : haris.dwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="validation.jsp" method="POST">
            <b>Username:</b><br>
            <input type="text" name="username" required><br>
            <b>Password:</b><br>
            <input type="password" name="password" required><br>
            <input type="submit" name="submit" value="Submit">
        </form>
    </body>
</html>
