<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>UPDATE</title>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
            <span class="fs-4">기존 포스트 수</span>
        </a>

        <ul class="nav nav-pills">
            <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
            <li class="nav-item"><a href="#" class="nav-link">About</a></li>
        </ul>
    </header>
<form:form action="../editok" method="post" modelAttribute="productVO">
    <form:hidden path="seq" />
    <table class="table table-bordered" id="list">
        <tr>
            <th>이름</th>
            <td><form:input cssClass="form-control" path="name" /></td>
        </tr>
        <tr>
            <th>물품코드</th>
            <td><form:input cssClass="form-control" path="code" /></td>
        <tr>
            <th>카테고리</th>
            <td>
                <form:select cssClass="form-select form-select-sm" path="category">
                    <option>카테고리를 선택하세요</option>
                    <option>식사류</option>
                    <option>간식류</option>
                    <option>생필품</option>
                    <option>기타</option>
                </form:select>
            </td>
        </tr>
        <tr>
            <th>가격</th>
            <td><form:input cssClass="form-control" path="price" /></td>
        </tr>
        <tr>
            <th>수량</th>
            <td><form:input cssClass="form-control" path="amount" /></td>
        </tr>
        <tr>
            <th>세일율(%)</th>
            <td>
                <form:input cssClass="form-control" path="sale" />
            </td>
        </tr>
        <tr>
            <th>유통기한</th>
            <td><form:input cssClass="form-control" path="expdate" /></td>
        </tr>
    </table>
    <div class="d-grid mb-3">
        <button type="submit" style="background-color: rgb(179, 206, 82)!important; color: white;" class="btn">수정하기</button>
    </div>
    <button type="button" class="btn btn-warning" onclick="history.back()">취소하기</button>
    </div>
</form:form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>