<%--
  Created by IntelliJ IDEA.
  User: nguyennd
  Date: 7/21/2014
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">


    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://getbootstrap.com/dist/css/bootstrap-responsive.min.css" rel="stylesheet">
    <title>mdm-server</title>
</head>
<body>
    <div class="container">
        <h2>mdm-server</h2>
        <form:form method="post" action="make" commandName="history" role="form">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Devices</th>
                    <th>Commands</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <c:if test="${!empty devices}">
                            <select class="form-control">
                                <c:forEach items="${devices}" var="device">
                                    <option value="${device.id}">${device.name}</option>
                                </c:forEach>
                            </select>
                        </c:if>
                    </td>
                    <td>
                        <%--<form:select items="${devices}" var="device">--%>
                            <%--<form:option value="${device.id}">${device.name}</form:option>--%>
                        <%--</form:select>--%>
                    </td>
                    <td>
                        <c:if test="${!empty commands}">
                            <select class="form-control">
                                <c:forEach items="${commands}" var="command">
                                    <option value="${command.id}">${command.name}</option>
                                </c:forEach>
                            </select>
                        </c:if>
                    </td
                </tr>
                </tbody>
            </table>
            <button type="submit" class = "btn btn-default">
                Make Command
            </button>
        </form:form>

    </div>
</body>
</html>
