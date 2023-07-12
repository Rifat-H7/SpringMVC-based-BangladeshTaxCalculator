<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>
        table,
        th,
        td {
            border: 1px solid black;
        }

    </style>
    <title>Income Tax Calculator Bangladesh (Salary)</title>
</head>
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-8111023413914984"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
<body>
<h1 style="text-align:center; background-color:Black; color:white; padding:8px"><a href="${pageContext.request.contextPath}/">Income Tax Calculator Bangladesh
    (Salary)</a></h1>

<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h6 style="padding: 0.25%;">Choose Tax Payer Category</h6>
            <form:form action="calculate" modelAttribute="salaryInformation">
                <form:select path="payerCategory" id="category_select" class="btn btn-dark dropdown-toggle"
                             type="button">
                    <form:option value="General">General</form:option>
                    <form:option value="FemaleOrSeniorCitizen">Female/Senior Citizen</form:option>
                    <form:option value="Disabled">Disabled</form:option>
                    <form:option value="GazettedFreedomFighter">Gazetted Freedom Fighters</form:option>
                </form:select>
                <br><br>
                <h6 style="padding: 0.25%;">Choose Zone</h6>
                <form:select path="payerZone" id="zone_select" class="btn btn-dark dropdown-toggle" type="button">
                    <form:option value="DhakaOrChittagong">Dhaka/Chattagram City</form:option>
                    <form:option value="OtherCities">Other City</form:option>
                    <form:option value="RestOfTheCountry">Rest of the Country</form:option>
                </form:select>
                <br><br>
                <h6 style="padding: 0.25%;">Salary Breakdown<sup>*</sup></h6>
                <div class="table-responsive">
                    <table class="table table-sm table-dark">
                        <thead>
                        <tr>
                            <th>Area</th>
                            <th>Amount</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Basic Salary</td>
                            <td><form:input path="basicSalary" id="basic_salary" type="number"
                                            value="${basicSalary}"/></td>
                        </tr>
                        <tr>
                            <td>House Rent</td>
                            <td><form:input path="houseRent" id="house_rent" type="number" value="${houseRent}"/></td>
                        </tr>
                        <tr>
                            <td>Medical Allowance</td>
                            <td><form:input path="medicalAllowance" id="medical" type="number"
                                            value="${medicalAllowance}"/></td>
                        </tr>
                        <tr>
                            <td>Conveyance</td>
                            <td><form:input path="conveyanceAllowance" id="conveyance" type="number"
                                            value="${conveyanceAllowance}"/></td>
                        </tr>
                        <tr>
                            <td>Incentive/OT</td>
                            <td><form:input path="incentive" id="commision" type="number" value="${incentive}"/></td>
                        </tr>
                        <tr>
                            <td>Festival Bonus</td>
                            <td><form:input path="festivalBonus" id="bonus" type="number"
                                            value="${festivalBonus}"/></td>
                        </tr>
                        <tr>
                            <th>Total</th>
                            <td><span id="total_income"></span>${incomeCalculator.totalIncome}</td>
                        </tr>
                        </tbody>
                    </table>
                    <p>* Total fiscal year salary including arrear (if any)</p>
                </div>
                <h6 style="padding: 0.25%;">Investment</h6>
                <div class="table-responsive">
                    <table class="table table-striped table-dark table-sm">
                        <tbody>
                        <tr>
                            <th>Eligible Amount</th>
                            <td><span id="eligible_investment1"></span>${taxCalculator.eligibleAmount}</td>
                        </tr>
                        <tr>
                            <td>Investment</td>
                            <td><form:input path="investment" type="number" value="${investment}"/></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <button id="Calculate-button" type="submit" class="btn btn-info btn-md"
                        style="padding-right: 1%; padding-left: 1%;"
                        data-toggle="modal" data-target="#shop1">Calculate
                </button>
                <button id="Calculate-button" type="button" class="btn btn-info btn-md"
                        style="padding-right: 1%; padding-left: 1%;"
                        data-toggle="modal" data-target="#shop1">Details
                </button>

            </form:form>
        </div>
    </div>
</div>
<br><br>

<%@include file="result.jsp" %>

</body>

</html>
