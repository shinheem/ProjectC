<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css2/login.css?=3" />
    <title>BELLO - 회원가입</title>
    <!-- JavaScript 코드 추가 -->
    <script>
        // 아이디 중복 체크 함수
        function checkDuplicatedId() {
            var id = document.getElementById("id").value;
            if (id) {
                // 아이디 중복 체크 요청을 checkDuplicatedId.jsp로 보냅니다.
                location.href = "checkDuplicatedId.jsp?id=" + id;
            }
        }
    </script>
</head>
<body>
<div class="container mt-3 width30">
    <h2>회원가입</h2>
    <form action="registerAction.jsp" method="post" accept-charset="UTF-8">
        <div class="mb-3 mt-3">
            <label for="id">아이디 : </label>
            <input class="form-control" id="id" placeholder="Enter id" name="id" required>
        </div>
        <div class="mb-3">
    <button type="button" class="btn btn-secondary" onclick="checkDuplicatedId()">아이디 중복확인</button>
</div>
        
        
        <div id="checkDuplicatedId">
        <c:if test="${message != null}">
        <c:out value="${message }"/>
        </c:if>
        </div>
        
        
        <!-- 나머지 입력 폼들은 여기에 추가 -->
        <div class="mb-3">
            <label for="password">패스워드 : </label>
            <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
        </div>
        <div class="mb-3">
            <label for="confirmPassword">패스워드 확인 : </label>
            <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm password"
                name="confirmPassword" required>
        </div>
        <div class="mb-3">
            <label for="tel">전화번호 : </label>
            <input type="text" class="form-control" id="tel" placeholder="Enter phone number" name="tel" required>
        </div>
        <div class="mb-3">
            <label for="email">이메일 : </label>
            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="name">이름 : </label>
            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
        </div>
        <button type="submit" class="btn btn-primary">회원가입</button>
        <button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}'">HOME</button>
    </form>
</div>
</body>
</html>
