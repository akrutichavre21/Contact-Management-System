<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 7/7/17
  Time: 11:30 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="myLayout"/>
    <title></title>
</head>
<body>
<br>
<br>
<h2><b> No Group </b></h2>
<hr>
<ul>
    <g:each in="${contact[1]}" var="noGroup">
       <h3><li><i> ${noGroup["firstName"]}  ${noGroup["lastName"]} - ${noGroup["phone"]}</i></li></h3>
    </g:each>
    <br>
</ul>
<g:each in="${contact[0]}" var="eachContact">
    <h2><b> ${eachContact[0]["myGroup"].name} </b></h2>
    <hr>
    <h3>
        <ul>
        <g:each in="${eachContact}">
            <li><i> ${it["firstName"]} ${it["lastName"]} - ${it["phone"]} </i> </li>
            <br>
        </g:each>
        </ul>
    </h3>
</g:each>
</body>
</html>