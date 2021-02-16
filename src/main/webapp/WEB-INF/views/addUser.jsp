<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: robert
  Date: 15.02.2021
  Time: 00:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="headerHome.jsp"%>
<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <form:form method="post" modelAttribute="user">
                    <div>
                        <h2>Rejestracja:</h2>
                        <div>
                            <h4>Nick Name:</h4>
                            <form:input path="nickName"/>
                            <form:errors path="nickName"/>
                        </div>
                        <div>
                            <h4>Email:</h4>
                            <form:input path="email"/>
                            <form:errors path="email"/>
                        </div>
                        <div>
                            <h4>Password:</h4>
                            <form:input path="password"/>
                            <form:errors path="password"/>
                        </div>
                    </div>
                    <input type="submit" name="Save">

                </form:form>

            </div>
        </div>
    </div>
</section>



</body>
</html>
