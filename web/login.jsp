<%-- 
    Document   : login
    Created on : 24-Oct-2022, 3:01:46 PM
    Author     : mht19
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.techblog.entities.Message" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <!--CSS-->
        <link href="css/app_style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <!--navbar-->
        <%@include file="navbar.jsp" %>

        <!--login card-->
        <main style= "height: 110vh; background: url(img/techblog_wallpaper.jpg);
              background-size: cover;
              clip-path: polygon(63% 0, 100% 0, 100% 35%, 100% 81%, 77% 95%, 48% 84%, 21% 95%, 0 83%, 0 0, 26% 0);">
            <br>
            <br>

            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card bg-primary">

                            <div class="card-header text-center primary-background text-white">
                                <h3><span class="fa fa-tumblr-square"></span> Login to your account</h3>
                            </div>
                            <div>
                                <%
                                Message m = (Message)session.getAttribute("msg");
                                if(m!=null){
                                %>
                                <div class="alert <%= m.getCssClass() %> text-center" role="alert">
                                     <a href="login.jsp" class="alert-link"> <%= m.getContent() %> </a>
                                </div>
                                <%
                                    session.removeAttribute("msg");
                                    }
                                %>

                            </div>

                            <div class="card-body">
                                <form action="login" method="POST">
                                    <div class="form-group">
                                        <label for="email_username">Email or username</label>
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><span class="fa fa-envelope"></span></div>
                                                <input type="text" class="form-control" name="email_username" id="email_username" aria-describedby="emailHelp" placeholder="Enter your email or username">

                                            </div>
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="pass">Password</label>
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><span class="fa fa-key"></span></div>
                                                <input type="password" class="form-control" name="pass" placeholder="Enter your password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="remember_me">
                                        <label class="form-check-label" for="remember_me">Remember me</label>
                                    </div>
                                    <br>
                                    <div class="form-group text-center">
                                        <button type="submit" class="btn btn-primary">Log in</button>
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
        <script>
            $(function() {
 
                if (localStorage.chkbx && localStorage.chkbx != '') {
                    $('#remember_me').attr('checked', 'checked');
                    $('#email_username').val(localStorage.usrname);
                } else {
                    $('#remember_me').removeAttr('checked');
                    $('#xip_Name').val('');
                }
 
                $('#remember_me').click(function() {
 
                    if ($('#remember_me').is(':checked')) {
                        // save username and password
                        localStorage.usrname = $('#email_username').val();
                        localStorage.chkbx = $('#remember_me').val();
                    } else {
                        localStorage.usrname = '';
                        localStorage.chkbx = '';
                    }
                });
            });
 
        </script>

    </body>
</html>