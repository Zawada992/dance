<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <%--                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>--%>
                <div class="col-lg-12">


                    <div class="p-5">
                        <div class="row p-2">
                            <h3><spring:message code="app.announcement"/>: <spring:message code="app.sell"/></h3>
                        </div>
                        <form:form method="post" modelAttribute="sell">
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <td><spring:message code="app.title"/>:</td>
                                    <form:input path="title" placeholder="Nazwa"
                                                class="form-control"/>
                                    <form:errors path="title"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <td><spring:message code="app.country"/>:</td>
                                    <form:select path="country" items="${country}"
                                                 itemLabel="name" itemValue="id"/>
                                </div>
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <td><spring:message code="app.conditionNewUsed"/>:</td>
                                    <form:select path="conditionNewUsed" items="${condition}"
                                                 itemLabel="name" itemValue="id"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <td><spring:message code="app.city"/>:</td>
                                    <form:input path="city" placeholder="nazwa"
                                                class="form-control"/>
                                    <form:errors path="city"/>
                                </div>
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <td><spring:message code="app.price"/>:</td>
                                    <form:input path="price" placeholder="cena"
                                                class="form-control"/>
                                    <form:errors path="price"/>
                                </div>
                            </div>
                            <div class="row">
                                <td><spring:message code="app.description"/>:</td>
                                <form:textarea path="description" placeholder="Opis ogłoszenia"
                                               class="form-control"
                                               cols="90" rows="8"/>
                                <form:errors path="description"/>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <td><spring:message code="app.email"/>:</td>
                                    <form:input path="email" placeholder="mail"
                                                class="form-control form-control-user"/>
                                    <form:errors path="email"/>
                                </div>
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <td><spring:message code="app.phoneNumber"/>:</td>
                                    <form:input path="phoneNumber" placeholder="numer"
                                                class="form-control form-control-user"/>
                                    <form:errors path="phoneNumber"/>
                                </div>

                            </div>
                            <button type="submit" class="btn btn-primary btn-user btn-block">
                                <spring:message code="app.add"/></button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<%@include file="../footer.jsp"%>
</body>
</html>
