<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Szukam Partnera/ki</title>
</head>
<body>

<%@include file="headerHome.jsp"%>

<section>
    <div class="row padding-small">
        <i class="fas fa-users icon-users"></i>
        <h1>Ogłoszenia Taneczne:</h1>
        <hr>
        <div class="orange-line w-100"></div>
    </div>
</section>

<section class="mr-4 ml-4">
    <table class="table">
        <thead>
        <tr class="d-flex text-color-darker">
            <th scope="col" class="col-2">COUNTRY</th>
            <th scope="col" class="col-2">TOWN</th>
            <th scope="col" class="col-2">TITLE</th>
            <th scope="col" class="col-2">CATEGORY DANCE</th>
            <th scope="col" class="col-2">GENDER</th>
            <th scope="col" class="col-1">HEIGHT</th>

            <th scope="col" class="col-1">AKCJE</th>
        </tr>
        </thead>
        <tbody class="text-color-lighter">
        <c:forEach items="${findPartner}" var="findPartner">
            <tr class="d-flex">
                <th scope="row" class="col-2">${findPartner.country}</th>
                <td class="col-2">${findPartner.town}</td>
                <td class="col-2">${findPartner.title}</td>
                <td class="col-2">${findPartner.categoryDance}</td>
                <td class="col-2">${findPartner.gender}</td>
                <td class="col-1">${findPartner.height}</td>

                <td class="col-1 d-flex align-items-center justify-content-center flex-wrap">

                    <a href="/app/recipe/details?id=${recipe.recipeId}" class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    </div>
    </div>
    </div>
</section>
</body>
</html>
