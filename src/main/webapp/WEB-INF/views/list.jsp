<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>재고 관리 시스템</title>
    <script>
        function delete_ok(id) {
            const a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/'+ id;
        }
    </script>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
            <span class="fs-4">CU 재고 관리 목록</span>
        </a>

        <ul class="nav nav-pills">
            <li class="nav-item"><span class="nav-link text-success">${sessionScope.login.username} 님</span></li>
            <li class="nav-item"><a href="#" class="nav-link">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
            <li class="nav-item"><a href="../login/logout" class="nav-link active">로그아웃</a></li>
        </ul>
    </header>
<table id="list">
    <tr>
        <th>No</th>
        <th>Id</th>
        <th>상품명</th>
        <th>상품코드</th>
        <th>분류</th>
        <th>가격</th>
        <th>수량</th>
        <th>세일율(%)</th>
        <th>유통기한</th>
        <th>등록일</th>
        <th>상세보기</th>
        <th>편집</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u" varStatus="status">
        <tr>
            <td>${fn:length(list)-status.index}</td>
            <td>${u.seq}</td>
            <td>${u.name}</td>
            <td>${u.code}</td>
            <td>${u.category}</td>
            <td>${u.price}</td>
            <td>${u.amount}</td>
            <td>${u.sale}</td>
            <td>${u.expdate}</td>
            <td>${u.regdate}</td>
            <td><a href="viewpost/${u.seq}">Detail</a></td>
            <td><a href="editpost/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
    <div class="d-grid">
    <button type="button" class="list btn" onclick="location.href='add'">작성하기</button>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>