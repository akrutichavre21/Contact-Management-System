<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 6/7/17
  Time: 11:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="myLayout">
</head>

<body>

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
<br>
<br>
<g:if test="${!fav}">
    <div>
        <h1>No Favourites</h1>
    </div>
</g:if>
<g:else>
<table class="table table-bordered" width="100%" align="center">
       <tr>
           <th>
               ID
           </th>
           <th>
               First Name
           </th>
           <th>
               Last Name
           </th>
           <th>
               Email
           </th>
           <th>
               Phone Number
           </th>
           <th>
               Date Of Birth
           </th>
           <th>
               Group Name
           </th>
       </tr>
<g:each in="${fav}">

    <tr>
        <td>
            ${it.id}
        </td>
        <td>
            ${it.firstName}
        </td>
        <td>
            ${it.lastName}
        </td>
        <td>
            ${it.email}
        </td>
        <td>
            ${it.phone}
        </td>
        <td>
            ${it.dob}
        </td>
        <td>
            <g:if test="${it.myGroup}">
                ${it.myGroup.name}
            </g:if>
            <g:else>
                No group
            </g:else>
        </td>
    </tr>
    </g:each>
    </table>
</g:else>
</body>
</html>
</body>
</html>