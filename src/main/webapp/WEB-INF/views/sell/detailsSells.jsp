
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
                <div class="col-lg-7">
                    <div class="p-5">

                        <div class="form-group row">
                            <td><spring:message code="app.title"/>:</td>
                            <div class="col-4">${advertSeles.title}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.description"/>:</td>
                            <div>${advertSeles.description}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.price"/>:</td>
                            <div class="col-4">${advertSeles.price}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.conditionNewUsed"/>:</td>
                            <div class="col-2">${advertSeles.conditionNewUsed.name}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.country"/>:</td>
                            <div class="col-4">${advertSeles.country.name}</div>
                            <td><spring:message code="app.city"/>:</td>
                            <div class="col-4">${advertSeles.city}</div>
                        </div>
                        <div class="form-group row">
                            <td><spring:message code="app.email"/>:</td>
                            <div class="col-4">${advertSeles.email}</div>
                            <td><spring:message code="app.phoneNumber"/>:</td>
                            <div class="col-4">${advertSeles.phoneNumber}</div>
                        </div>
                        <div class="rightContainer">
                            <a href='<c:url value="/sell/showAll"/>'
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
