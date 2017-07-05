<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 29/6/17
  Time: 7:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="myLayout"/>
    <title></title>
</head>

<body>
<div class="col-md-4">
    <form action="/test/edit" method="post">
        <br>
        <br>
        <label>Enter First Name</label>
        <input type="text" name="fname" value="${updateInstance?. firstName}" class="form-control" required/>
        <br>
        <br>
        <label>Enter Last Name</label>
        <input type="text" name="lname" value="${updateInstance?. lastName}" class="form-control" required/>
        <br>
        <br>
        <label>Select Group Names :</label>
        <select name="groupId" class="form-control">
            <g:each in="${contact.org.ep.TestGroup.list()}">
                <option value="${it.id}">${it.name}</option>
            </g:each>
        </select>
        <br>
        <br>
        <input type="hidden" name="id" value="${updateInstance.id}">
        <input type="submit" class="btn btn-primary btn-block">
    </form>


</div>
</body>
</html>