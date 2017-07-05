<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 3/7/17
  Time: 1:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="myLayout"/>
</head>
<body>
<div class="col-md-4">
    <br>
    <br>
    <br>
    <form action="/testgroup/edit" method="post" >
        <label>Enter Group Name :</label>
        <input type="text" name="gname" class="form-control" value="${updateInstance.name}" required/>
        <br>
        <br>
        <input type="hidden" value="${updateInstance.id}" name="id">
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>