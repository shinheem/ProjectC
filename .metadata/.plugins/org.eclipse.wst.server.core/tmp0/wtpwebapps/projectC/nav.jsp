<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body class="is-preload">
   <!-- Header -->
    <header id="header">
        <div>
            <div class="inner">
                <ul>
                    <c:choose>
    <c:when test="${not empty sessionScope.user}">
        <c:if test="${sessionScope.user.role == 'admin'}">
            <li><a href="<%= request.getContextPath()%>/admin/admin.jsp">관리자</a></li>
            <li><a href="<%= request.getContextPath()%>/login/logout.jsp">로그아웃</a></li>
            
        </c:if>
        <c:if test="${sessionScope.user.role != 'admin'}">
            <li><a href="<%= request.getContextPath()%>/Notice/Notice.jsp">공지사항</a></li>
            <li><a href="<%= request.getContextPath()%>/mypage/mypage.jsp">마이페이지</a></li>
            <li><a href="<%= request.getContextPath()%>/cart/cart_select.jsp">장바구니</a></li>
            <li><a href="<%= request.getContextPath()%>/CustomerQnA/QnA.jsp">고객센터</a></li>
            <li><a href="<%= request.getContextPath()%>/login/logout.jsp">로그아웃</a></li>
        </c:if>
    </c:when>
    <c:otherwise>
        <li><a href="<%= request.getContextPath()%>/Notice/Notice.jsp">공지사항</a></li>
        <li><a href="<%= request.getContextPath()%>/mypage/mypage.jsp" onclick="confirmLogin(); return false;">마이페이지</a></li>
        <li><a href="#" onclick="confirmLogin(); return false;">장바구니</a></li>
        <li><a href="<%= request.getContextPath()%>/CustomerQnA/QnA.jsp" onclick="confirmLogin(); return false;">고객센터</a></li>
        <li><a href="<%= request.getContextPath()%>/login/login.jsp">로그인</a></li>
    </c:otherwise>
</c:choose>

                </ul>
            </div>
            <div class="first">
                <ul>
                    <li><a href="<%= request.getContextPath()%>/clothes/clothe_outer.jsp">OUTER</a></li>
                    <li><a href="<%= request.getContextPath()%>/clothes/clothe_top.jsp">TOP</a></li>
                    <li><a href="<%= request.getContextPath()%>/clothes/clothe_pants.jsp">PANTS</a></li>
                    <li><a href="<%= request.getContextPath()%>/clothes/clothe_shoes.jsp">SHOES</a></li>
                    <li><a href="<%= request.getContextPath()%>/styling/stylingList.jsp">STYLING</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- Search Bar -->
    <div id="search">
        <a class="logo" href="<%= request.getContextPath()%>/index.jsp"><strong>Bello</strong></a>
    </div>
