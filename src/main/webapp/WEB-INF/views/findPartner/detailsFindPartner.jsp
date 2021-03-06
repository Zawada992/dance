<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="../header.jsp"%>
<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <%--                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>--%>
                <div class="col-lg-7">
                    <div class="p-5">

                        <div class="form-group row">
                            <td><spring:message code="app.title"/>:</td>
                            <div class="col-4">${findPartner.title}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.description"/>:</td>
                            <div>${findPartner.description}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.country"/>:</td>
                            <div class="col-4">${findPartner.country.name}</div>
                            <td><spring:message code="app.city"/>:</td>
                            <div class="col-4">${findPartner.city}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.gender"/>:</td>
                            <div class="col-2">${findPartner.gender.gender}</div>
                            <td><spring:message code="app.age"/>:</td>
                            <div class="col-2">${findPartner.age}</div>
                            <td><spring:message code="app.height"/>:</td>
                            <div class="col-2">${findPartner.height}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.categoryDance"/>:</td>
                            <div class="col-4">${findPartner.categoryDance.category}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.ballroomClass"/>:</td>
                            <div class="col-2">${findPartner.ballroomClass.ballroomClass}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.latinClass"/>:</td>
                            <div class="col-2">${findPartner.latinClass.laClass}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.email"/>:</td>
                            <div class="col-4">${findPartner.email}</div>
                            <td><spring:message code="app.phoneNumber"/>:</td>
                            <div class="col-4">${findPartner.phoneNumber}</div>
                        </div>
                        <div class="rightContainer">
                            <a href='<c:url value="/findPartner/showAll"/>'
                               class="btn btn-primary">Powrót</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<%@include file="../footer.jsp"%>
</body>
</html>
