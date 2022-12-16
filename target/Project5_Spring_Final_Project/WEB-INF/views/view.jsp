<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%--
  상세보기 페이지
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상품 상세보기</title>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
            <span class="fs-4">일련번호${productVO.seq} 상품 보기</span>
        </a>

        <ul class="nav nav-pills">
            <li class="nav-item"><span class="nav-link text-success">${sessionScope.login.username} 님</span></li>
            <li class="nav-item"><a href="#" class="nav-link">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
            <li class="nav-item"><a href="#" class="nav-link">About</a></li>
        </ul>
    </header>
    <table class="table" id="list">
        <tr>
            <th>상품명</th>
            <td>${productVO.name}</td>
        </tr>
        <tr>
            <th>상품코드</th>
            <td>${productVO.code}</td>
        </tr>
        <tr>
            <th>분류</th>
            <td>${productVO.category}</td>
        </tr>
        <tr>
            <th>가격</th>
            <td>${productVO.price}</td>
        </tr>
        <tr>
            <th>수량</th>
            <td>${productVO.amount}</td>
        </tr>
        <tr>
            <th>세일율(%)</th>
            <td>${productVO.sale}</td>
        </tr>
        <tr>
            <th>유통기한</th>
            <td>${productVO.expdate}</td>
        </tr>
    </table>
    <button type="button" class="btn btn-success" onclick="location.href='../list'">목록으로 돌아가기</button>
</div>
</body>
</html>
