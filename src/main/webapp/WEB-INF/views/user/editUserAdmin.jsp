<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: robert
  Date: 05.03.2021
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="../header.jsp"%>
<div class="container mt-4">
    <div class="row">
        <div class="col-xl-8">

            <div class="card mb-4">
                <div class="card-body">
                    <form:form method="post" modelAttribute="user" action="/app/user/update">

                        <form:hidden path="id"/>
                        <form:hidden path="password"></form:hidden>
                        <form:hidden path="roles"></form:hidden>
                        <div class="form-group">
                            <td><spring:message code="app.userName"/></td>
                            <form:input path="username" class="form-control"/>
                            <form:errors path="username"/>
                        </div>

                        <div class="form-group">
                            <td><spring:message code="app.email"/></td>
                            <form:input path="email" class="form-control "/>
                            <form:errors path="email"/>
                        </div>

                        <button type="submit" class="btn btn-primary">
                            <spring:message code="app.edit"/></button>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>
