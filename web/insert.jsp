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
            Cookie[] cookies = request.getCookies();
                Cookie cookie;
                String username = "";
                if (cookies != null) {
                    for (int i = 0; i < cookies.length; i++) {
                        cookie = cookies[i];
                        if (cookie.getName().equals("username")) {
                            username = cookie.getValue();
                        }
                        if (cookie.getName().equals("role")) {
                            if (cookie.getValue().equals("2")) {
                                response.sendRedirect("adminhome.jsp");
                            }
                        }
                    }
                }
            String db_user = "root";
            String db_pass = "632146rockyou";
            String db_url = "jdbc:mysql://localhost/lawui-haris";
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(db_url, db_user, db_pass);
            Statement statement = connection.createStatement();
            String count = "Select count(*) from event";
            ResultSet resultSet = statement.executeQuery(count);
            
            DateFormat df = new SimpleDateFormat("dd/MM/yy");
            
            //int num = Integer.parseInt(resultSet.getObject(1).toString()) + 1;
            String title = request.getParameter("title");
            String location = request.getParameter("location");
            Date sdate = new java.sql.Date((df.parse(request.getParameter("sdate"))).getTime());
            Date edate = new java.sql.Date((df.parse(request.getParameter("edate"))).getTime());
            String cat = request.getParameter("cat");
            String desc = request.getParameter("desc");
            
            String query = "insert into event(title,location,sdate,edate,cat,description,user) values('"+title+"','"+location+"','"+sdate+"','"+edate+"','"+cat+"','"+desc+"','"+username+"')";
            statement.executeUpdate(query);
        %>
    </body>
</html>
