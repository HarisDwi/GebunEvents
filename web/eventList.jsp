<%-- 
    Document   : eventList
    Created on : Apr 25, 2016, 11:47:55 AM
    Author     : tricerafi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of Event</title>
    </head>
    <body>
         <%
            String db_user = "root";
            String db_pass = "632146rockyou";
            String db_url = "jdbc:mysql://localhost/lawui-haris";
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(db_url, db_user, db_pass);
            Statement statement = connection.createStatement();
            String query = "SELECT * from event";
            ResultSet resultSet = statement.executeQuery(query);
            
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            out.print("<table border = '1'>");
            out.print("<tr>");
            for (int i = 1; i <= numberOfColumns; i++) {
                out.print("<td>");
                out.print(metaData.getColumnName(i));
                out.print("</td>");
            }
            out.print("<td>");
            out.print("delete");
            out.print("</td>");
            out.print("</tr>");
            while (resultSet.next()) {
                out.print("<tr>");
                for (int i = 1; i <= numberOfColumns; i++) {
                    out.print("<td>");
                    out.print(resultSet.getObject(i));
                    out.print("</td>");
                }
                out.print("<td>");
                out.print("<a href=\"delete.jsp?id=" + resultSet.getObject(1) + "\">Delete</a>");
                out.print("</td>");
                out.print("</tr>");
            }
            out.print("</table>");
            connection.close();
            statement.close();
        %>
    </body>
</html>
