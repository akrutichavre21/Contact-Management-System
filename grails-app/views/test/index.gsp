<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 29/6/17
  Time: 7:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="myLayout"/>
    <title></title>

</head>

<body>
<div class="col-md-4">
    <g:if test="${flash.loginSuccess}">
        <div class=" alert alert-success">${flash.loginSuccess}</div>
    </g:if>
    <g:if test="${flash.dateError}">
        <div class=" alert alert-danger">${flash.dateError}</div>
    </g:if>
    <g:if test="${flash.successSignup}">
        <div class=" alert alert-success">${flash.successSignup}</div>
    </g:if>
    <form action="/test/save" method="post" >
        <label>Enter First Name :</label>
        <input type="text" name="fname" class="form-control" required/>
        <br>
        <label>Enter Last Name :</label>
        <input type="text" name="lname" class="form-control" required/>
        <br>
        <label>Enter Email Address :</label>
        <input type="email" name="email" class="form-control" required/>
        <br>
        <label>Enter Date Of Birth :</label>
        <input type="date" name="dob" class="form-control" required/>
        <br>
        <label>Enter Phone Number :</label>
        <input type="number" name="phone" class="form-control" required/>
        <br>
        <label>Select Group Names :</label>
        <select name="groupId" class="form-control">
            <option value="noGroup">No Group</option>
            <g:each in="${myInstance}">
                <option value="${it.id}">${it.name}</option>
            </g:each>
        </select>
        <br>
        <label>Favourite Contact </label>  <input type="checkbox" name="fav" value="fav">
        <br>
        <br>
        <input type="submit" class="btn btn-primary btn-block">
        <br>
        <br>
    </form>
</div>
</body>
</html>