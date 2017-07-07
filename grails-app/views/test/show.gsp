
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="myLayout"/>
    <title></title>
</head>

<body>
<br>
<br>
<g:if test="${flash.successCreate}">
    <div class=" alert alert-success">${flash.successCreate}</div>
</g:if>
<g:if test="${flash.successDel}">
    <div class=" alert alert-success">${flash.successDel}</div>
</g:if>
<g:if test="${flash.successUp}">
    <div class=" alert alert-success">${flash.successUp}</div>
</g:if>

<g:if test="${!abc}">
    <h1>No contents to display</h1>
</g:if>

<g:else>
    <g:if test="${flash.unsuccessDel}">
        <div class=" alert alert-danger">${flash.unsuccessDel}</div>
    </g:if>

    <g:if test="${flash.unsuccessUp}">
        <div class=" alert alert-danger">${flash.unsuccessUp}</div>
    </g:if>

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
                Favourite
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
                    <g:if test="${it.favFlag==true}">
                        Yes
                    </g:if>
                    <g:else>
                        No
                    </g:else>
                </td>
                <td>
                    <g:if test="${it.myGroup}">
                        ${it.myGroup.name}
                    </g:if>
                    <g:else>
                    No group
                    </g:else>

                </td>
                <td>
                    <g:link  controller="test" action="delete" id="${it.id}" class="btn btn-danger">Delete</g:link>
                    <g:link controller="test" action="update" id="${it.id}" class="btn btn-info">Update</g:link>
                </td>
            </tr>

        </g:each>
    </table>
</g:else>
</body>
</html>