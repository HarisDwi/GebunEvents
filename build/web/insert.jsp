<%-- 
    Document   : insert
    Created on : Apr 25, 2016, 12:51:48 PM
    Author     : tricerafi
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
            Connection connection = DriverManager.getConnection(db_url, db_user, db_pass);
            Statement statement = connection.createStatement();
            //String count = "Select count(*) as total from event";
            //ResultSet resultSet = statement.executeQuery(count);
            
            DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
            
            int num = 0;
            String title = request.getParameter("title");
            String location = request.getParameter("location");
            String sdate = request.getParameter("sdate");
            String edate = request.getParameter("edate");
            String cat = request.getParameter("cat");
            String desc = request.getParameter("desc");
            
            String query = "INSERT INTO `event`(`eventid`, `title`, `location`, `startdate`, `enddate`, `category`, `desc`) VALUES ("+num+",'"+title+"','"+location+"','"+sdate+"','"+edate+"','"+cat+"','"+desc+"')";
            
            statement.executeUpdate(query);
            response.sendRedirect("userhome.jsp");
        %>
        
    </body>
</html>
