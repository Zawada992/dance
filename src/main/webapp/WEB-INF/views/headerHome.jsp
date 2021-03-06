<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Serwis Taneczny</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
          rel="stylesheet">
    <link href='<c:url value="/css/style.css"/>' rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>
<header class="page-header">
    <nav class="navbar navbar-expand navbar-light bg-gray-900 topbar mb-4 static-top shadow">
        <a href="/" class="navbar-brand main-logo">
            Serwis <span>Taneczny</span>
        </a>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item ml-4">
                <a class="nav-link color-header" href="/login"><spring:message code="app.login"/></a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link color-header" href="/user/add"><spring:message code="app.registration"/></a>
            </li>

            <%--            <li class="nav-item ml-4">--%>
            <%--                <a class="nav-link" href="sell/showAll"><spring:message code="app.sell"/></a>--%>
            <%--            </li>--%>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" id="sellDropdown" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <spring:message code="app.sell"/>
                </a>
                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                     aria-labelledby="sellDropdown">
                    <a class="dropdown-item" href="<c:url value="sell/showAll"/>">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                        Szukaj Ogłoszenia
                    </a>
                    <sec:authorize access="isAuthenticated()">
                        <a class="dropdown-item" href="<c:url value="/app/sell/add"/>">
                            <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                            Dodaj Ogłoszenie
                        </a>
                    </sec:authorize>
                </div>
            </li>

<%--            <li class="nav-item ml-4">--%>
<%--                <a class="nav-link disabled" href="/find/showAll"><spring:message code="app.findPartner"/></a>--%>
<%--            </li>--%>
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" id="findPartnerDropdown" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <spring:message code="app.findPartner"/>
                </a>
                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                     aria-labelledby="findPartnerDropdown">
                    <a class="dropdown-item" href="<c:url value="/findPartner/showAll"/>">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                        Szukaj Ogłoszenia
                    </a>
                    <sec:authorize access="isAuthenticated()">
                    <a class="dropdown-item" href="<c:url value="/findPartner/add"/>">
                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                        Dodaj Ogłoszenie
                    </a>
                    </sec:authorize>
                </div>
            </li>

            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="/#contact"><spring:message code="app.contact"/></a>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>
            <sec:authorize access="isAuthenticated()">
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<%--                    <sec:authorize access="isAuthenticated()">--%>

                        <p>Zalogowany: <sec:authentication property="principal.username"/></p>
<%--                        <p> <sec:authentication property="authorities"/></p>--%>
<%--                    </sec:authorize>--%>
                </a>
                <!-- Dropdown - User Information -->
                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                     aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="<c:url value="/user/edit"/>">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                        Profile
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="<c:url value="/test"/>">
                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                        Dodaj Ogłoszenie
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                        Activity Log
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                        Logout
                    </a>
                </div>
            </li>
            </sec:authorize>
        </ul>
    </nav>
</header>
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <sec:authorize access="isAuthenticated()">
                    <form action="<c:url value="/logout"/>" method="post">
                        <input type="submit" class="btn btn-primary" value="Wyloguj">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </sec:authorize>
            </div>
        </div>
    </div>
</div>
