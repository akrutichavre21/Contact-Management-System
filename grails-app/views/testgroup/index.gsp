<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 3/7/17
  Time: 1:39 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="myLayout"/>
</head>

<body>
<br>
<br>
<div class="col-md-4">
    <form action="/testgroup/save" method="post" >
        <label>Enter Group Name :</label>
        <input type="text" name="gname" class="form-control" required/>
        <br>
        <br>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>