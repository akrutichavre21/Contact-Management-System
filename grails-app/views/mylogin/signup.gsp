<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 7/7/17
  Time: 2:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet src="mainPage.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
</head>

<body>
<div class="container">

    <div class="container">
        <br>
        <br>
        <div class="row">
            <div class="col-md-4 col-md-offset-4 border">
                <div class="adjust">
                    <h2><b style="color: #ffffff">Sign Up Form</b></h2>
                    <hr>
                    <br>
                    <form action="/mylogin/signupSave" method="post">
                        <label style="color: #ffffff;" ><b>First Name :</b></label>
                        <input type="text" name="fname" class="form-control" required>
                        <br>
                        <label style="color: #ffffff;" ><b>Last Name :</b></label>
                        <input type="text" name="lname" class="form-control" required>
                        <br>
                        <label style="color: #ffffff;" ><b>Email :</b></label>
                        <input type="email" name="email" class="form-control" required>
                        <br>
                        <label style="color: #ffffff;"><b>Password :</b></label>
                        <input type="password" name="password" class="form-control"  required>
                        <br>
                        <br>
                        <input type="submit" class="btn btn-success btn-block" value="Sign Up"/>
                    </form>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>