<%-- 
    Document   : logout
    Created on : May 16, 2016, 4:33:44 PM
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
            if(cookies != null){
                for(int i = 0; i < cookies.length; i++){
                    cookie = cookies[i];
                    cookie.setMaxAge(0);
               }
            }
            response.sendRedirect("index.jsp");
        %>    
    </body>
</html>
