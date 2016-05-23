<%-- 
    Document   : register
    Created on : May 9, 2016, 8:56:01 AM
    Author     : haris.dwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Registration Page</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/shop-homepage.css" rel="stylesheet">
    </head>
    <body>
            <!-- Page Content -->
        <div class="container">

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

                    <div class="row">

                        <form action="registerValidation.jsp" method="POST">
                            <b>Username:</b><br>
                            <input type="text" name="username" required><br>
                            <b>Email:</b><br>
                            <input type="text" name="email" required><br>
                            <b>Password:</b><br>
                            <input type="password" name="password" required><br>
                            <input type="submit" name="submit" value="Submit">
                        </form>

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
