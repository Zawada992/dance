<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<spring:message code="app.login.loginButton" var="loginButton"/>
<spring:message code="app.login.username" var="username"/>
<spring:message code="app.login.password" var="password"/>
<%--<spring:message code="app.login.loginGoogle" var="loginGoogle"/>--%>
<%--<spring:message code="app.login.loginFacebook" var="loginFacebook"/>--%>
<spring:message code="app.login.rememberMe" var="rememberMe"/>
<spring:message code="app.login.createAccount" var="createAccount"/>
<spring:message code="app.login" var="login"/>
<spring:message code="app.backToHome" var="backToHome"/>


<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${login}</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link
            href="<c:url value="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/css/sb-admin-2.min.css"/>" rel="stylesheet">


</head>
<body class="bg-dark">
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4"><spring:message code="app.login.logs"/></h1>
                                </div>
                                <form class="user" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user"
                                               placeholder="${username}" name="username">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                               id="exampleInputPassword"
                                               placeholder="${password}" name="password"/>
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">${rememberMe}</label>
                                        </div>
                                    </div>
                                    <div><input type="submit" value="${loginButton}"
                                                class="btn btn-primary btn-user btn-block"/></div>

                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<%--                                    <hr>--%>
<%--                                    <a href="/oauth2/authorization/google" class="btn btn-google btn-user btn-block">--%>
<%--                                        <i class="fab fa-google fa-fw"></i> ${loginGoogle}--%>
<%--                                    </a>--%>
<%--                                    <a href="index.html" class="btn btn-facebook btn-user btn-block">--%>
<%--                                        <i class="fab fa-facebook-f fa-fw"></i> ${loginFacebook}--%>
<%--                                    </a>--%>

<%--                                    <hr>--%>
                                </form>
                                <%--                                <div class="text-center">--%>
                                <%--                                    <a class="small" href="forgot-password.html">Forgot Password?</a>--%>
                                <%--                                </div>--%>
                                <div class="text-center">
                                    <a class="small" href="<c:url value="/user/add"/>">${createAccount}</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="<c:url value="/"/>">${backToHome}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="<c:url value="/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value="/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value="/js/sb-admin-2.min.js"/>"></script>

</body>
</html>
