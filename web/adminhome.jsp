<%-- 
    Document   : adminhome
    Created on : Apr 11, 2016, 2:45:31 PM
    Author     : haris.dwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cookie[] cookies = request.getCookies();
            Cookie cookie;
            String username = "null";
            if(cookies != null){
                for(int i = 0; i < cookies.length; i++){
                    cookie = cookies[i];
                    if(cookie.getName().equals("username"))
                        username = cookie.getValue();
               }
            }
            out.print("<h1>Hello " + username + "!</h1><br>");
        %>    
        <a href="createEvent.jsp">Create Event</a>
        <a href="eventList.jsp">Event List</a>
        <a href="logout.jsp">Log out</a>
    </body>
</html>
