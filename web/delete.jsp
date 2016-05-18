<%-- 
    Document   : delete
    Created on : May 17, 2016, 5:07:03 PM
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
            String id = request.getParameter("id");
            if (!id.equals(null)) {
                Connection connection = DriverManager.getConnection(db_url, db_user, db_pass);
                Statement statement = connection.createStatement();
                String query = "DELETE FROM event WHERE eventid = '" + id + "'";
                int updated = statement.executeUpdate(query);
                if (updated < 1) {
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Delete Error</title>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("Error deleting, please return and try again.<br>");
                    out.println("<a href=\"eventList.jsp\">Go back</a>");
                    out.println("</body>");
                    out.println("</html>");
                } else {
                    response.sendRedirect("eventList.jsp");
                }
            }
        %>    
    </body>
</html>
