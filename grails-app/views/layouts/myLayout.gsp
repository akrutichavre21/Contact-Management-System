<!doctype html>
<html lang="en" class="no-js">
<head>
    %{--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>--}%
    <title>
        CRUD In Database
    </title>
    <asset:stylesheet src="myLayout.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    %{--    <asset:stylesheet src="application.css"/>

        <g:layoutHead/>--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/testgroup/index">My Contacts</a>
        </div>
        <ul class="nav navbar-nav navbar-right">

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact
                    <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                    <li><a href="/test/show">View</a></li>
                    <li><a href="/test/index">Create</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Group
                    <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                    <li><a href="/testgroup/show">View</a></li>
                    <li><a href="/testgroup/index">Create</a></li>
                </ul>
            </li>
            <li><a href="/dashboard/index">Favourites</a></li>
            <li><a href="/dashboard/showContact">Contact Listing</a></li>
            <li><a href="/dashboard/reminder">Reminders</a></li>
            <li> <a href="/mylogin/logout"> Logout </a></li>
        </ul>
    </div>
</nav>
<div class="container">
    <g:layoutBody/>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files
        as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
