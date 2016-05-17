<%-- 
    Document   : delete
    Created on : May 17, 2016, 5:07:03 PM
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
            String id = request.getParameter("id");
            out.print("I want to try deleting event id " + id);
        %>    
    </body>
</html>
