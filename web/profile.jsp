<%@page import="com.techblog.entities.*" %>
<%@page import="com.techblog.dao.PostDao" %>
<%@page import="com.techblog.helper.ConnectionProvider" %>
<%@page import="java.util.ArrayList" %>
<%@page errorPage="error.jsp" %>
<%
User user = (User) session.getAttribute("current_user");
    if (user == null){
    response.sendRedirect("login.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>

        <!--CSS-->
        <link href="css/app_style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark nav-background">
            <a class="navbar-brand" href="index.jsp"><span class="fa fa-tumblr-square"></span> Tech Blog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp"><span class="fa fa-home"></span> Home <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="fa fa-reorder"></span> Categories
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Programming Languages</a>
                            <a class="dropdown-item" href="#">Project Tutorials</a>
                            <a class="dropdown-item" href="#">Data Structure</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"> <span class="fa fa-id-badge"></span> Contact</a>
                    </li>
                </ul>
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="navbar-brand" href="#" data-toggle="modal" data-target="#post-modal"><span class="fa fa-pencil-square-o"></span> Write a post</a> 
                    </li>
                </ul>
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </li>
                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item active">
                        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle-o"></span> <%= user.getUsername() %> </a>
                    </li>
                    <li class="nav-item active">
                        <a class="btn btn-outline-light my-2 my-sm-0" href="logout" type="submit">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!--end of nav bar-->
        
        <!--main body-->
        <main>
            <div class="container">
                <div class="row">
                    <!--first column-->
                    <div class="col-md-4">
                        <!--categories-->
                    </div>
                    <!--second column-->
                    <div class="col-md-8">
                        <!--posts-->
                    </div>
                </div>
                
            </div>
        </main>
        <!--end of main boady-->

        <!--Profile Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Tech Blog</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <table class="table table-striped">
                            <tbody>
                                <tr>
                                    <th scope="row">Name :</th>
                                    <td><%= user.getFirst_name() %> <%= user.getLast_name() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">Gender :</th>
                                    <td><%= user.getGender() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">Id :</th>
                                    <td><%= user.getUser_id() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">Username :</th>
                                    <td><%= user.getUsername() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">Email :</th>
                                    <td><%= user.getEmail() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">Joined on :</th>
                                    <td><%= user.getDate() %></td>
                                </tr>

                            </tbody>
                        </table>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!--end of profile modal-->

        <!--Post modal-->

        <div class="modal fade" id="post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Create post</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="PostServlet" method="post" id="add-post-form">
                            <div class="form-group">
                                <select class="form-control" name="cid">
                                    <option selected disabled>---Select Category---</option>
                                    <%
                                        PostDao postd = new PostDao(ConnectionProvider.getConnection());
                                        ArrayList<Category> list = postd.getAllCategories();
                                        for(Category c:list) {
                                    %>
                                    <option value="<%= c.getCid() %>"><%= c.getName() %></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <input name="title" type="text" placeholder="Enter the title here" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <textarea name="content" class="form-control" style="height: 200px;" placeholder="Enter the content here"></textarea>
                            </div>
                            <div class="form-group">
                                <textarea name="code" class="form-control" style="height: 200px;" placeholder="write code here (if any)"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Upload image for the post</label>
                                <br>
                                <input name="image" type="file">
                            </div>
                            <div class="container text-center">
                                <button class="btn btn-outline-primary">Post</button>
                            </div>
                        </form>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
                crossorigin="anonymous">
        </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
                crossorigin="anonymous">
        </script>

        <!--add post js-->
        <script>
            $(document).ready(function (e) {
                alert("loaded...")

                $("#add-post-form").on("submit", function (event) {
//                    function event gets called when form is submitted
                    event.preventDefault();
                    console.log("clicked on post");

                    let form = new FormData(this);

//                      requesting server

                    $.ajax({
                        url: "PostServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
//                          success
                            console.log(data);
                            if (data.trim() == 'done')
                            {
                                swal("Done!", "Your post was successful ", "success");
                                $("#add-post-form").trigger("reset");
                            } else
                            {
                                swal("Error!", "Something went wrong...", "error");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
//                          error
                            swal("Error!", "Something went wrong...", "error");
                        },
                        processData: false,
                        contentType: false
                    })
                })
            })
        </script>
    </body>
</html>
