<%-- 
    Document   : createEvent
    Created on : Apr 25, 2016, 11:47:38 AM
    Author     : tricerafi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Event</title>
    </head>
    <body>
        <form action="insert.jsp" method="POST">
            <b>Title:</b><br>
            <input type="text" name="title" required><br>
            <b>Location:</b><br>
            <input type="text" name="location" required><br>
            <b>Start Date:</b><br>
            <input type="text" name="sdate" placeholder="yyyy-mm-dd" onfocus="displayCalendar('inputField','yyyy-mm-dd',this)"><br>
            <b>End Date:</b><br>
            <input type="text" name="edate" placeholder="yyyy-mm-dd" onfocus="displayCalendar('inputField','yyyy-mm-dd',this)"><br>
            <b>Category:</b><br>
            <input type="text" name="cat"><br>
            <b>Description:</b><br>
            <input type="text" name="desc"><br>
            <input type="submit" name="submit" value="Submit">
        </form>
    </body>
</html>
