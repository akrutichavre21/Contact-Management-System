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
        <label>Enter First Name</label>
        <input type="text" name="fname" value="${updateInstance[0]?. firstName}" class="form-control" required/>
        <br>
        <label>Enter Last Name</label>
        <input type="text" name="lname" value="${updateInstance[0]?. lastName}" class="form-control" required/>
        <br>
        <label>Enter Email Address :</label>
        <input type="email" name="email" value="${updateInstance[0]. email}" class="form-control" required/>
        <br>
        <label>Enter Date Of Birth :</label>
        <input type="date" name="dob" value="${updateInstance[0]?. dob}" class="form-control" required/>
        <br>
        <label>Enter Phone Number :</label>
        <input type="number" name="phone" value="${updateInstance[0]?. phone}" class="form-control" required/>
        <br>
        <label>Select Group Names :</label>
        <select name="groupId" class="form-control">
            <option value="noGroup">No Group</option>
            <g:each in="${updateInstance[1]}">
                <option value="${it.id}">${it.name}</option>
            </g:each>
        </select>
        <br>
        <label>Favourite Contact </label>  <input type="checkbox" name="fav" value="fav">
        <br>
        <br>
        <input type="hidden" name="id" value="${updateInstance[0].id}">
        <input type="submit" class="btn btn-primary btn-block">
    </form>


</div>
</body>
</html>