<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Szukam Partnera/ki</title>
</head>
<body>

<%@include file="../header.jsp" %>

<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">


                    <div class="col-sm-12">
                        <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0"
                               role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                            <thead>

                            <tr role="row">
                                <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1"
                                    colspan="1" aria-sort="ascending"
                                    aria-label="Name: activate to sort column descending" style="width: 40px;">
                                    <spring:message code="app.country"/></th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                    aria-label="Position: activate to sort column ascending" style="width: 150px;">
                                    <spring:message code="app.city"/></th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                    aria-label="Office: activate to sort column ascending" style="width: 120px;">
                                    <spring:message code="app.title"/></th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                    aria-label="Age: activate to sort column ascending" style="width: 150px;">
                                    <spring:message code="app.categoryDance"/></th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                    aria-label="Start date: activate to sort column ascending"
                                    style="width: 150px;"><spring:message code="app.gender"/></th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                    aria-label="Start date: activate to sort column ascending"
                                    style="width: 150px;"><spring:message code="app.height"/></th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                    aria-label="Salary: activate to sort column ascending" style="width: 150px; ">
                                    <spring:message code="app.action"/></th>
                            </tr>
                            </thead>
                            <tfoot>

                            <tr>
                                <th rowspan="1" colspan="1"><spring:message code="app.country"/></th>
                                <th rowspan="1" colspan="1"><spring:message code="app.city"/></th>
                                <th rowspan="1" colspan="1"><spring:message code="app.title"/></th>
                                <th rowspan="1" colspan="1"><spring:message code="app.categoryDance"/></th>
                                <th rowspan="1" colspan="1"><spring:message code="app.gender"/></th>
                                <th rowspan="1" colspan="1"><spring:message code="app.height"/></th>
                                <th rowspan="1" colspan="1"><spring:message code="app.action"/></th>
                            </tr>

                            </tfoot>
                            <tbody>
                            <c:forEach items="${findPartner}" var="findPartner">
                                <tr role="row" class="odd">
                                    <td><c:out value="${findPartner.country.name}"/></td>
                                    <td><c:out value="${findPartner.city}"/></td>
                                    <td><c:out value="${findPartner.title}"/></td>
                                    <td><c:out value="${findPartner.categoryDance.category}"/></td>
                                    <td><c:out value="${findPartner.gender.gender}"/></td>
                                    <td><c:out value="${findPartner.height}"/></td>
                                    <td>
                                        <a href='<c:url value="/findPartner/show/${findPartner.id}"/>'
                                           class="btn btn-primary"
                                           style="background-color:#0000ff; border-color:#0000ff;color:#ffffff"><spring:message
                                                code="app.details"/></a>
                                        <sec:authorize access="hasRole('ADMIN')">
                                        <a href='<c:url value="app/findPartner/delete"/>'
                                           class="btn btn-primary"
                                           style="background-color:#FF0000; border-color:#FF0000;color:#ffffff"><spring:message
                                                code="app.delete"/></a>
                                        </sec:authorize>
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../footer.jsp" %>
</body>
</html>
