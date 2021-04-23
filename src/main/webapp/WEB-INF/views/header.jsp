<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="org.springframework.web.context.WebApplicationContext" %>
<%--<%@ page import="pl.gastromanager.service.UserService" %>--%>
<%--<%@ page import="pl.gastromanager.model.Users" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Custom fonts for this template-->
    <link href="<c:url value="/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link
            href="<c:url value="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/css/sb-admin-2.min.css"/>" rel="stylesheet">
    <!-- Custom styles for this page -->
    <link href="<c:url value="/vendor/datatables/dataTables.bootstrap4.min.css"/>" rel="stylesheet">

</head>

<body id="page-top">

<%--    <%--%>
<%--                String name = SecurityContextHolder.getContext().getAuthentication().getName();--%>
<%--                WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);--%>
<%--                UserService userService = context.getBean(UserService.class);--%>
<%--                Users currentUser = userService.findByUserEmail(name);--%>
<%--                pageContext.setAttribute("currentUser", currentUser);--%>
<%--    %>--%>

<div id="wrapper">

    <sec:authorize access="isAuthenticated()">

    <ul class="navbar-nav bg-gradient-warning sidebar sidebar-dark accordion" id="accordionSidebar">


        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="/"/> ">
            <div class="sidebar-brand-icon rotate-n-15">
                    <%--                <i class="fas fa-laugh-wink"></i>--%>
            </div>
            <div class="sidebar-brand-text mx-3">Serwis Taneczny</div>
        </a>


        <hr class="sidebar-divider my-0">


        <li class="nav-item">
            <a class="nav-link" href="<c:url value="/"/>">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Strona główna</span></a>
        </li>


        <hr class="sidebar-divider">




        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSzukamPartnera"
               aria-expanded="true" aria-controls="collapseSzukamPartnera">

                <i class="fas fa-smile fa-fw"></i>

                <span> Szukam Partnera/ki</span>
            </a>
            <div id="collapseSzukamPartnera" class="collapse" aria-labelledby="headingTwo"
                 data-parent="#accordionSidebar">
                <div class="bg-gray-900 py-2 collapse-inner rounded">
                        <%--                    <h6 class="collapse-header">Operacje:</h6>--%>
                    <a class="collapse-item text-gray-100" href="<c:url value="/app/findPartner/showAllMyAd"/>">Lista</a>
                    <a class="collapse-item text-gray-100" href="<c:url value="/app/findPartner/add"/>">Dodaj</a>

                </div>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSprzedaz"
               aria-expanded="true" aria-controls="collapseSprzedaz">

                <i class="fas fa-dollar-sign fa-fw"></i>
                <span>Sprzedaż przedmiotów</span>
            </a>
            <div id="collapseSprzedaz" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-gray-900 py-2 collapse-inner rounded">
                        <%--                    <h6 class="collapse-header">Operacje:</h6>--%>
                    <a class="collapse-item text-gray-100" href="<c:url value="/app/sell/showAllMyAd"/>">Lista</a>

                    <a class="collapse-item text-gray-100" href="<c:url value="/app/sell/add"/>">Dodaj</a>


                </div>
            </div>
        </li>


        <!-- Nav Item - Utilities Collapse Menu -->
        <sec:authorize access="hasRole('ADMIN')">
            <hr class="sidebar-divider">
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsers"
                   aria-expanded="true" aria-controls="collapseUsers">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Użytkownicy</span>
                </a>
                <div id="collapseUsers" class="collapse" aria-labelledby="headingUtilities"
                     data-parent="#accordionSidebar">
                    <div class="bg-gray-900 py-2 collapse-inner rounded">
                        <a class="collapse-item text-gray-100" href="<c:url value="/admin/user/all"/>">Lista</a>

                    </div>
                </div>
            </li>
        </sec:authorize>

        <hr class="sidebar-divider d-none d-md-block">


        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    </sec:authorize>



    <div id="content-wrapper" class="d-flex flex-column">


        <div id="content">


            <nav class="navbar navbar-expand navbar-light bg-gray-900 topbar mb-4 static-top shadow">


                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


                <ul class="navbar-nav ml-auto">


                    <li class="nav-item ml-4">
                        <a class="nav-link color-header" href="<c:url value="/sell/showAll"/>">
                            <spring:message code="app.sell"/></a>
                    </li>
                    <li class="nav-item ml-4">
                        <a class="nav-link color-header" href="<c:url value="/findPartner/showAll"/>">
                            <spring:message code="app.findPartner"/></a>
                    </li>
                    <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item ml-4">
                        <a class="nav-link color-header" href="<c:url value="/login"/>">
                            <spring:message code="app.login"/></a>
                    </li>
                    <li class="nav-item ml-4">
                        <a class="nav-link color-header" href="<c:url value="/user/add"/>">
                            <spring:message code="app.registration"/></a>
                    </li>
                    </sec:authorize>

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <sec:authorize access="isAuthenticated()">
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">


                                <span class="mr-2 d-none d-lg-inline text-gray-200" style="margin-top: 15px">
                                    <p><sec:authentication property="principal.username"/></p>
<%--                                <p>${currentUser.firstName} ${currentUser.lastName}</p>--%>
<%--                                <p> <sec:authentication property="authorities"/></p>--%>
                                </span>

                            <img class="img-profile rounded-circle"
                                 src="<c:url value="/img/undraw_profile.svg"/>">
                        </a>


                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="<c:url value="/app/user/edit"/>">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Account
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
