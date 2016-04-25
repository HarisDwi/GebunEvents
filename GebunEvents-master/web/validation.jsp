<%-- 
    Document   : validation
    Created on : Apr 11, 2016, 3:09:10 PM
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
            String password = request.getParameter("password");
            Connection connection = DriverManager.getConnection(db_url, db_user, db_pass);
            Statement statement = connection.createStatement();
            String query = "SELECT role FROM gebun_users WHERE username='" + username 
                    + "' AND password='" + password +"'";
            ResultSet resultSet = statement.executeQuery(query);
            String role = "";
            if(!resultSet.isBeforeFirst()){
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Login Error</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("Error in credentials, please return and try again.<br>");
                out.println("<a href=\"index.jsp\">Go back</a>");
                out.println("</body>");
                out.println("</html>");
            }
            else{
                resultSet.next();
                role = resultSet.getObject(1) + "";
            }
            if(role.equals("1")){
                response.sendRedirect("userhome.jsp");
            }
            else if(role.equals("2")){
                response.sendRedirect("adminhome.jsp");
            }
        %>    
    </body>
</html>
