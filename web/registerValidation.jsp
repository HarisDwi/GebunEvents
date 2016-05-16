<%-- 
    Document   : registerValidation
    Created on : May 9, 2016, 8:56:19 AM
    Author     : haris.dwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String db_user = "root";
            String db_pass = "632146rockyou";
            String db_url = "jdbc:mysql://localhost/lawui-haris";
            Class.forName("com.mysql.jdbc.Driver");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Connection connection = DriverManager.getConnection(db_url, db_user, db_pass);
            Statement statement = connection.createStatement();
            String query = "INSERT INTO gebun_users (username,email,password,role) VALUES ('"
                    + username + "','" + email + "','" + password + "','1')";
            int updated = statement.executeUpdate(query);
            if(updated < 1){
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Registration Error</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("Error registering, please return and try again.<br>");
                out.println("<a href=\"register.jsp\">Go back</a>");
                out.println("</body>");
                out.println("</html>");
            }
            else{
                response.sendRedirect("index.jsp");                
            }
        %>    
    </body>
</html>
