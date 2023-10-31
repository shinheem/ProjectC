<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // 세션에서 사용자 정보를 제거
    session.removeAttribute("user");
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>로그아웃</title>
</head>
<body>
    <script>
        // 로그아웃 후 메인화면으로 이동 
        window.location.href = "../index.jsp";
    </script>
</body>
</html>
