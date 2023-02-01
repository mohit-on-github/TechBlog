<%-- 
   Document   : index
   Created on : 21-Oct-2022, 12:47:03 AM
   Author     : mht19
--%>
<%@page import = "com.techblog.helper.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homepage</title>
        
        <!--CSS-->
        <link href="css/app_style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <!--navigation bar-->
        <%@include file = "navbar.jsp" %>

        <!--banner-->
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron banner-background text-white" >
                <div class="container">
                    <h3 class="display-3">Welcome to Tech Blog</h3>
                    <p>At Tech Blog, we believe everyone should have the opportunity
                        to create progress through technology and develop the skills of tomorrow.
                        With assessments, learning paths and courses authored by industry experts,
                        our platform helps businesses and individuals benchmark expertise across roles,
                        speed up release cycles and build reliable, secure products
                    </p>
                    <a href="signup.jsp" class="btn btn-outline-light btn-lg">
                        <span class="fa fa-user-plus"></span> Start ! It's free</button>
                        <a href="login.jsp" class="btn btn-outline-light btn-lg">
                        <span class="fa fa-user-circle-o fa-spin"></span> Login</a>
                </div>
            </div>
        </div>

        <!--cards-->
        <div class="container">
            <div class="row mb-2 md-2 ">
                
                <div class="col md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                <div class="col md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                <div class="col md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="row">
                
                <div class="col md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                <div class="col md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                <div class="col md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                
            </div>
            
<!-- javascript-->
        <script
            src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
            crossorigin="anonymous">
        </script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
                crossorigin="anonymous">
        </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
                crossorigin="anonymous">
        </script>

    </body>
</html>

