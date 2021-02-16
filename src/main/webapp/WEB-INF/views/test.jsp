<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<%@include file="headerHome.jsp" %>
<body>
    <form:form method="post" modelAttribute="findPartner">
        <table class="formularz">
            <tbody>
            <tr>
                <td class="tdLabel">płeć:</td>
                    <%--                <td class="tdField">--%>
                    <%--                    <select name="kryteria.plec" id="SzukajPartnera_kryteria_plec">--%>
                    <%--                        <option value="">--dowolny--</option>--%>
                    <%--                        <option value="1">mężczyzna</option>--%>
                    <%--                        <option value="2">kobieta</option>--%>
                    <%--                    </select>--%>

                <form:select path="gender">
                    <option value="">--dowolny--</option>
                    <option value="1">mężczyzna</option>
                    <option value="2">kobieta</option>
                </form:select>
            </tr>
            </tbody>
        </table>
    </form:form>

    </body>
    </html>
