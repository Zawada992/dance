<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: robert
  Date: 15.02.2021
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="headerHome.jsp" %>

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

                </td>
                <td class="tdLabel">klasa standard:</td>
                <td class="tdField">
                    <select name="kryteria.klasaStandard" id="SzukajPartnera_kryteria_klasaStandard">
                        <option value="">--dowolny--</option>
                        <option value="8">A</option>
                        <option value="7">B</option>
                        <option value="12">(brak)</option>
                        <option value="6">C</option>
                        <option value="5">D</option>
                        <option value="4">E</option>
                        <option value="3">F</option>
                        <option value="2">G</option>
                        <option value="1">H</option>
                        <option value="11">hobby</option>
                        <option value="10">(nie.dot.)</option>
                        <option value="9">S</option>


                    </select>

                </td>
                <td class="tdLabel">wiek :</td>
                <td class="tdField">
                    <select name="kryteria.zakresWiekMin" id="SzukajPartnera_kryteria_zakresWiekMin">
                        <option value="">--dowolny--</option>
                        <option value="1">&lt;8</option>
                        <option value="2">8-9</option>
                        <option value="3">10-11</option>
                        <option value="4">12-13</option>
                        <option value="5">14-15</option>
                        <option value="6">16-18</option>
                        <option value="7">19-21</option>
                        <option value="8">21+</option>
                        <option value="9">25+</option>
                        <option value="10">35+</option>
                        <option value="11">45+</option>


                    </select>

                </td>
            </tr>
            <tr>
                <td class="tdLabel">kraj:</td>
                <td class="tdField">
                    <select name="kryteria.kraj" id="SzukajPartnera_kryteria_kraj" onchange="this.form.submit()">
                        <option value="">--dowolny--</option>
                        <option value="1" selected="selected">Polska</option>
                        <option value="1" >Ukraina</option>
                        <option value="1" >Rosja</option>


                    </select>

                </td>
                <td class="tdLabel">klasa latin:</td>
                <td class="tdField">
                    <select name="kryteria.klasaLatin" id="SzukajPartnera_kryteria_klasaLatin">
                        <option value="">--dowolny--</option>
                        <option value="8">A</option>
                        <option value="7">B</option>
                        <option value="12">(brak)</option>
                        <option value="6">C</option>
                        <option value="5">D</option>
                        <option value="4">E</option>
                        <option value="3">F</option>
                        <option value="2">G</option>
                        <option value="1">H</option>
                        <option value="11">hobby</option>
                        <option value="10">(nie.dot.)</option>
                        <option value="9">S</option>


                    </select>

                </td>

            </tr>
            <tr>


                <td class="tdLabel">wzrost [cm]:</td>
                <td class="tdField"><input type="text" name="kryteria.wzrostMin" size="3" value=""
                                           id="SzukajPartnera_kryteria_wzrostMin" style="text-align:right"></td>
            </tr>
            <tr>
                <td class="tdLabel">miejscowość:</td>
                <td class="tdField"><input type="text" name="kryteria.miejscowosc" value=""
                                           id="SzukajPartnera_kryteria_miejscowosc"></td>
                <td class="tdLabel">staż max.:</td>
                <td class="tdField">
                    <select name="kryteria.stazTanecznyMax" id="SzukajPartnera_kryteria_stazTanecznyMax">
                        <option value="">--dowolny--</option>
                        <option value="1">do 3 miesięcy</option>
                        <option value="2">od 3 do 12 miesięcy</option>
                        <option value="3">od 1 do 2 lat</option>
                        <option value="4">od 2 do 3 lat</option>
                        <option value="5">od 3 do 5 lat</option>
                        <option value="6">od 5 do 10 lat</option>
                        <option value="7">powyżej 10 lat</option>


                    </select>

            <tr>
                <td class="tdLabel">styl taneczny:</td>
                <td class="tdField">
                    <select name="kryteria.stylTaneczny" id="SzukajPartnera_kryteria_stylTaneczny">
                        <option value="">--dowolny--</option>
                        <option value="25">(inny)</option>
                        <option value="34">bachata</option>
                        <option value="31">balet</option>
                        <option value="27">break dance</option>
                        <option value="26">disco</option>
                        <option value="28">electric boogie</option>
                        <option value="29">funky</option>
                        <option value="24">hip-hop</option>
                        <option value="30">jazz</option>
                        <option value="36">kizomba</option>
                        <option value="33">rock'n roll</option>
                        <option value="22">salsa</option>
                        <option value="35">tango argentyńskie</option>
                        <option value="32">taniec brzucha</option>
                        <option value="18">taniec współczesny</option>
                        <option value="19">towarzyski kombinacja</option>
                        <option value="21">towarzyski standard</option>
                        <option value="20">towarzyski łacina</option>


                    </select>

                <td class="tdField" colspan="2" style="text-align:right">
                    <input type="submit" id="SzukajPartnera_method:execute" name="method:execute" value="filtruj">

                    <input type="submit" id="SzukajPartnera_method:wyczysc" name="method:wyczysc" value="wyczyść">

                </td>
            </tr>
            </tbody>
        </table>
    </form:form>
</head>
<body>

</body>
</html>
