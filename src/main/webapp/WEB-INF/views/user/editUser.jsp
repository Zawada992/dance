<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../header.jsp"%>
    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
        <div class="container-fluid">
            <div class="page-header-content">
                <div class="row align-items-center justify-content-between pt-3">
                    <div class="col-auto mb-3">
                        <h1 class="page-header-title">
                            <div class="page-header-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-user">
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="12" cy="7" r="4"></circle>
                                </svg>
                            </div>
                            Account Settings - Profile
                        </h1>
                    </div>
                </div>
            </div>
        </div>
    </header>
</head>
<body>

<div class="container mt-4">
    <!-- Account page navigation-->
    <nav class="nav nav-borders">
        <a class="nav-link active ml-0" href="<c:url value="/app/user/edit"/>">Profile</a>

        <a class="nav-link" href="<c:url value="/app/user/security"/>">Security</a>
    </nav>
    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">Account Details</div>
                <div class="card-body">
                    <form:form method="post" modelAttribute="user" action="/app/user/update">
                        <!-- Form Group (username)-->
                        <form:hidden path="id"/>
                        <form:hidden path="password"/>
                        <form:hidden path="roles"/>
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
