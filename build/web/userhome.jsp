<%-- 
    Document   : userhome
    Created on : Apr 11, 2016, 2:44:44 PM
    Author     : haris.dwi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <title>JSP Page</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/shop-homepage.css" rel="stylesheet">
    </head>
    <body>
        
        <!-- Page Content -->
        <div class="container">
            
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
                } else {
                    response.sendRedirect("index.jsp");
                }
                out.print("<h1>Hello " + username + "!</h1>");
            %>  
            <div class="row">

                <div class="col-md-3">
                    <p class="lead">Directory</p>
                    <div class="list-group">
                        <a href="userhome.jsp" class="list-group-item">Home</a>
                        <a href="createEvent.jsp" class="list-group-item">Create Event</a>
                        <a href="index.jsp" class="list-group-item">Login</a>
                    </div>
                </div>
                
                <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
                
                <div class="col-md-9">

                    <div class="row">

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

                            while (resultSet.next()) {
                                out.print("<div class='col-sm-4 col-lg-4 col-md-4'>");
                                out.print("<div class='thumbnail'>");
                                out.print("<img src='http://placehold.it/320x150' alt=''>");
                                out.print("<div class='caption'>");

                                out.print("<h4 class='pull-right'>");
                                out.print(resultSet.getObject(6));
                                out.print("</h4>");

                                out.print("<h4><a href='#'>");
                                out.print(resultSet.getObject(2));
                                out.print("</a></h4>");

                                out.print("<p>");
                                out.print(resultSet.getObject(7));
                                out.print("</p>");

                                out.print("</div>");
                                out.print("</div>");
                                out.print("</div>");
                            }

                            connection.close();
                            statement.close();
                        %>

                    </div>

                </div>

            </div>

        </div>
        
        <!-- /.container -->
        <div class="container">

            <hr>
            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Your Website 2014</p>
                    </div>
                </div>
            </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
