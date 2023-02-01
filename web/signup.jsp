<%-- 
    Document   : signup
    Created on : 24-Oct-2022, 11:47:36 PM
    Author     : mht19
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
        <!--CSS-->
        <link href="css/app_style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <!--navbar-->
        <%@include file="navbar.jsp" %>

        <!--login card-->
        <main style= "height: 117vh; background: url(img/techblog_wallpaper.jpg);
              background-size: cover;
              clip-path: polygon(68% 0, 100% 0, 100% 40%, 100% 86%, 80% 95%, 49% 88%, 16% 97%, 0 90%, 0 0, 27% 0);">
            <br>

            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="card align-items">

                            <!--header-->
                            <div class="card-header text-center primary-background text-white">
                                <h3><span class="fa fa-tumblr-square"></span> Register on Tech Blog</h3>
                            </div>

                            <!--body-->
                            <div class="card-body">
                                <form id="reg-form" action="register" method="post">
                                    <div class="row">
                                        <div class="col md-6">
                                            <label for="first_name">First Name</label>
                                            <div class="input-group mb-2">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text"><span class="fa fa-user-o"></span></div>
                                                    <input type="text" name="first_name" class="form-control" placeholder="First name">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col m-6">
                                            <label for="last_name">Last Name</label>
                                            <div class="input-group mb-2">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text"><span class="fa fa-user"></span></div>
                                                    <input type="text" name="last_name" class="form-control" placeholder="Last name">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col m-12">
                                            <label for="user_name">Username</label>
                                            <div class="input-group mb-2">

                                                <div class="input-group-text">@</div>
                                                <input type="text" name="user_name" class="form-control" placeholder="Create a username">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col m-12">
                                            <label for="email_id">Email address</label>
                                            <div class="input-group mb-2">
                                                <div class="input-group-text"><span class="fa fa-envelope"></span></div>
                                                <input type="email" name="email_id" class="form-control" placeholder="Enter your email">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col m-12">
                                            <label for="pass">Password</label>
                                            <div class="input-group mb-2">
                                                <div class="input-group-text"><span class="fa fa-key"></span></div>
                                                <input type="password" name="pass" class="form-control" placeholder="Create a password">
                                            </div>
                                        </div>
                                    </div>

                                    <label for="gender">Select Gender</label>
                                    <div class="row">
                                        <div class="col m-6">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" value="male">
                                                <label class="form-check-label" for="gender">Male</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" value="female">
                                                <label class="form-check-label" for="gender">Female</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col m-12">
                                            <div class="form-text">
                                                <small>By clicking Sign up, 
                                                    you agree to our Terms, 
                                                    Privacy Policy and Cookies Policy. 
                                                </small>
                                            </div>
                                            <br>
                                            <div class="text-center" id="loader" style="display: none">
                                                <span class="fa fa-refresh fa-spin fa-2x"></span>
                                                <h5>Please wait...</h5>
                                            </div>
                                            <div class="form-group text-center">
                                                <button type="submit" id="submit-btn" class="btn btn-primary text-center">Sign up</button>  
                                            </div>                                                
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>



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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
                $(document).ready(function () {
                console.log("loaded...")

                        $('#reg-form').on('submit', function (event) {
                event.preventDefault();
                        $('#submit-btn').hide();
                        $('#loader').show();
                        let form = new FormData(this);
                        $.ajax({
                        url: "register",
                                type: "POST",
                                data: form,
                                success: function (data, textStatus, jqXHR) {
                                console.log(data);
                                        $('#loader').hide();
                                        $('#submit-btn').show();
                                        if (data.trim() === 'done') {
                                        swal({
                                        title: "Registered Succesfully!",
                                                text: "Redirect to login page",
                                                icon: "success",
                                                button: "Alight!"
                                            }).then(function(){
                                                window.location = "login.jsp";
                                            });
                                             
                                        }
                                        else {
                                        swal({
                                        title: "Oops!",
                                                text: "Something went wrong...",
                                                icon: "error",
                                                button: "Alright!"
                                        });
                                        }
                                        },
                                                error: function (jqXHR, textStatus, errorThrown) {
                                                console.log(jqXHR);
                                                        $('#loader').hide();
                                                        $('#submit-btn').show();
                                                        swal({
                                                        title: "Oops!",
                                                                text: "Something went wrong...",
                                                                icon: "error",
                                                                button: "Alright!"
                                                        });
                                                },
                                                processData: false,
                                                contentType: false
                                        });
                                });
                                });

        </script>

    </body>
</html>
