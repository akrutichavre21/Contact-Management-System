<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 7/7/17
  Time: 1:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="myLayout"/>
    <title></title>
</head>

<body>
<h1><b>Upcoming Birthdays -</b></h1>
<hr>
<h3>
    <g:each in="${dobList}" var="dobContact">
        <ul>
            <g:each in="${dobContact}">
               <li><i>${it["firstName"]} ${it["lastName"]} - ${it["dob"]}</i></li>
                <br>
            </g:each>
        </ul>
    </g:each>
</h3>
</body>
</html>