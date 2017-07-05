<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 3/7/17
  Time: 1:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="myLayout"/>
</head>

<body>
<g:if test="${flash.successSave}">
    <div class=" alert alert-success">${flash.successSave}</div>
</g:if>
<g:if test="${flash.deleteUnsuccess}">
    <div class=" alert alert-danger">${flash.deleteUnsuccess}</div>
</g:if>
<g:if test="${flash.unsuccessfulUpdate}">
    <div class=" alert alert-danger">${flash.unsuccessfulUpdate}</div>
</g:if>
<g:if test="${!abc}">
    <h1>No contents to display</h1>
</g:if>
<g:else>
    <g:if test="${flash.deleteSuccess}">
        <div class=" alert alert-success">${flash.deleteSuccess}</div>
    </g:if>
    <g:if test="${flash.successUpdate}">
        <div class=" alert alert-success">${flash.successUpdate}</div>
    </g:if>
    <table class="table table-bordered" width="100%" align="center">
        <tr>
            <th>
                ID
            </th>
            <th>
                Group Name
            </th>
            <th>
                Action
            </th>
        </tr>
        <g:each in="${abc}">

            <tr>
                <td>
                    ${it.id}
                </td>
                <td>
                    ${it.name}
                </td>
                <td>
                    <g:link controller="testgroup" action="delete" id="${it.id}" class="btn btn-danger">Delete</g:link>
                    <g:link controller="testgroup" action="update" id="${it.id}" class="btn btn-info">Update</g:link>
                </td>
            </tr>

        </g:each>
    </table>
</g:else>
</body>
</html>